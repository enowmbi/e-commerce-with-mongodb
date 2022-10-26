class Cart
  include Mongoid::Document

  field :items, type: Array
  field :total, type: BigDecimal, default: 0

  embedded_in :user
  embeds_many :items
end
