class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :tags, type: Array
  field :categories, type: Array

  embeds_many :skus
end
