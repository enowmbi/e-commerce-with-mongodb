class SkusController < ApplicationController
  def index
  end

  def new
  end

  def create
    product = Product.find(params[:product_id])
    product.skus.build(sku_params)
    if product.save
      redirect_to product_path(product), notice: "added sku successfully"
    end
  end

  def update
  end

  private

  def sku_params
    params.require(:sku).permit(:sku, :price, :quantity_in_stock, :feature, :image)
  end
end
