json.extract! product, :id, :name, :tags, :categories, :skus, :created_at, :updated_at
json.url product_url(product, format: :json)
