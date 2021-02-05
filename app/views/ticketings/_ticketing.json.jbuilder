json.extract! ticketing, :id, :system, :Trains, :from, :To, :Date, :Price, :Class, :created_at, :updated_at
json.url ticketing_url(ticketing, format: :json)
