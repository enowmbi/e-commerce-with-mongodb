class CartsController < ApplicationController
  def create
    # TODO: create a cart document and embed in the user
    cart = Cart.new
    item = Item.new
    item.name = params[:product][:name]
    item.sku = params[:product][:skus][:sku]
    item.price = params[:product][:skus][:price]
    item.quantity = params[:product][:skus][:quantity]
    item.feature = params[:product][:skus][:feature]

    cart.items << item

    current_user.cart = cart
    current_user.cart.save!
  end
end
