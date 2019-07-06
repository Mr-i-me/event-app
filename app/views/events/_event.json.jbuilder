json.extract! event, :id, :title, :description, :begin, :end, :event_tickets, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
