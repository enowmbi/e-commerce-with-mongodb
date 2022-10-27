class CheckoutsController < ApplicationController
  def create
    order = create_order

    @session = create_stripe_session(order)

    user = User.find(current_user._id)
    user.cart.destroy

    redirect_to @session.url, allow_other_host: true
  end

  private

  def create_order
    Order.create(
      customer: customer,
      payment: payment,
      items: line_items,
      order_number: order_number,
      order_date: order_date,
      order_status: order_status,
      total_amount: total_amount
    )
  end

  def create_stripe_session(order)
      Stripe::Checkout::Session.create({
        mode: "payment",
        payment_method_types: ['card'],
        line_items: line_items,
        success_url: success_order_url(order),
        cancel_url: failure_order_url(order)
      })
  end

  def line_items
    items = []
    current_user.cart.items.map do |line_item|
      item = {}
      item[:amount] = (line_item.price * 100).to_i
      item[:currency] = "usd"
      item[:name] = "#{line_item.name}--#{line_item.feature}"
      item[:quantity] = line_item.quantity
      items << item
    end
    items
  end

  def customer
    {
        _id: current_user._id,
        first_name: current_user.first_name,
        last_name: current_user.last_name,
        email: current_user.email,
        billing_address: billing_address,
        shipping_address: shipping_address
    }
  end

  def billing_address
    {
        _id: current_user.billing_address._id,
        country: current_user.billing_address.country,
        city: current_user.billing_address.city,
        state: current_user.billing_address.state,
        street1: current_user.billing_address.street1,
        street2: current_user.billing_address.street2
    }
  end

  def shipping_address
    {
      _id: current_user.shipping_address._id,
      country: current_user.shipping_address.country,
      city: current_user.shipping_address.city,
      state: current_user.shipping_address.state,
      street1: current_user.shipping_address.street1,
      street2: current_user.shipping_address.street2
    }
  end

  def payment
    {
      status: "processing",
      token: "pending",
      type: "stripe"
    }
  end

  def order_number
    Time.current.to_i
  end

  def total_amount
    current_user.cart.total || 0
  end

  def order_date
    Date.current
  end

  def order_status
    "processing"
  end
end
