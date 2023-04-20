json.extract! weather, :id, :location, :data, :created_at, :updated_at
json.url weather_url(weather, format: :json)
