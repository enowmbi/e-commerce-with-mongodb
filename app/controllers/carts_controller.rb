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

    cart.items << item

    user = User.find(current_user.id)
    user.cart.items << item
    user.save!
  end
end
