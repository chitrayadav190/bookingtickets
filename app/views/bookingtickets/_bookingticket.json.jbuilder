json.extract! bookingticket, :id, :event_name, :location, :Date, :Price, :created_at, :updated_at
json.url bookingticket_url(bookingticket, format: :json)
