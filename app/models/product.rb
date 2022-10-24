class Product
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :tags, type: Array
  field :categories, type: Array

  embeds_many :skus

  # def to_key
    # Time.current.to_i
  # end
end
