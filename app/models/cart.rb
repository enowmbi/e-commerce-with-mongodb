class Cart
  include Mongoid::Document

  field :items, type: Array
  field :total, type: BigDecimal

  embedded_in :user
  embeds_many :items
end
