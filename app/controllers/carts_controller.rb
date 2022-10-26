class CartsController < ApplicationController
  def create
    cart = Cart.new
    item = Item.new
    item.name = params[:product][:name]
    item._id = params[:product][:skus][:_id]
    item.sku = params[:product][:skus][:sku]
    price = params[:product][:skus][:price]
    item.price = price
    item.quantity = 1
    item.extended_price = price * item.quantity
    item.feature = params[:product][:skus][:feature]

    user = User.find(current_user.id)

    if user.cart
      user.cart.items << item
    else
      cart.items << item
      user.cart = cart
    end

    user.save!
  end

  def show
    @cart = current_user.cart
  end

  def increase_item_count
  end
  def decrease_item_count
  end
end
