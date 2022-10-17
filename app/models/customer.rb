class Customer
  include Mongoid::Document

  field :_id, type: BSON::ObjectId
  field :first_name, type: String
  field :last_name, type: String
  field :email, type: String

  embedded_in :order
  embeds_one :billing_address
  embeds_one :shipping_address
end
