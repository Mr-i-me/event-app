json.extract! ticket, :id, :sku, :event_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
