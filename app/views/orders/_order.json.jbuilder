json.extract! order, :id, :order_date, :order_number, :total_amount, :order_status, :customer, :items, :payment, :created_at, :updated_at
json.url order_url(order, format: :json)
