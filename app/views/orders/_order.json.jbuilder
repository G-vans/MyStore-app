json.extract! order, :id, :customer_name, :customer_email, :total_amount, :created_at, :updated_at
json.url order_url(order, format: :json)
