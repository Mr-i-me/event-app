json.extract! order, :id, :user_id, :price, :ticket_id, :created_at, :updated_at
json.url order_url(order, format: :json)
