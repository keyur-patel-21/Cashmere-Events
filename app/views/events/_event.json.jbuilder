json.extract! event, :id, :name, :genre, :artist, :description, :frequency, :platform, :venue, :date, :time, :ticket_price, :created_at, :updated_at
json.url event_url(event, format: :json)
