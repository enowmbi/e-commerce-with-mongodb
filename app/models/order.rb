class Order
  include Mongoid::Document
  include Mongoid::Timestamps

  field :order_date, type: Date
  field :order_number, type: Integer
  field :order_status, type: String
  field :total_amount, type: BigDecimal

  embeds_many :items
  embeds_one :customer
  embeds_one :payment
end
