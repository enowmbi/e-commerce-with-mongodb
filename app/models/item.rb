class Item
  include Mongoid::Document

  field :_id, type: BSON::ObjectId
  field :name, type: String
  field :sku, type: String
  field :quantity, type: Integer
  field :price, type: BigDecimal
  field :feature, type: String
  field :extended_price, type: BigDecimal

  embedded_in :order
  embedded_in :cart
end
