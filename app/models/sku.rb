class Sku
  include Mongoid::Document

  field :sku, type: String
  field :price, type: BigDecimal
  field :quantity_in_stock, type: Integer
  field :feature, type: String

  embedded_in :product
end
