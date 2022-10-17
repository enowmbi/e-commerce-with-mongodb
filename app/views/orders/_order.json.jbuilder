json.extract! order, :id, :order_date, :order_number, :total_amount, :total_before_tax, :total_after_tax, :tax_percent, :discount_amount, :order_status, :created_at, :updated_at
json.url order_url(order, format: :json)
