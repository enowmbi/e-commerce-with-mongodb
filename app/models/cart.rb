class Cart
  include Mongoid::Document

  field :items, type: Array
  field :total, type: BigDecimal

  embeds_many :items
end
