class Item
  include Mongoid::Document

  field :_id, type: BSON::ObjectId
  field :name, type: String
  field :sku, type: String
  field :quantity, type: Integer
  field :currency, type: String, default: "usd"
  field :price, type: BigDecimal, as: :amount
  field :feature, type: String
  field :extended_price, type: BigDecimal

  embedded_in :order
  embedded_in :cart
end
