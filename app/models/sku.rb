class Sku
  include Mongoid::Document
  include Mongoid::Paperclip

  field :sku, type: String
  field :price, type: BigDecimal
  field :quantity_in_stock, type: Integer
  field :feature, type: String

  has_mongoid_attached_file :image, styles: { medium: "300x300", thumb: "100x100#", original: "1920x1680>" }

  validates_attachment_content_type :image, content_type: %w[image/jpeg image/jpg image/png]

  embedded_in :product
end
