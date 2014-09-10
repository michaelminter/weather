json.array!(@climates) do |climate|
  json.extract! climate, :id, :temperature, :pressure, :humidity, :temperature_min, :temperature_max, :wind_speed, :wind_degrees, :clouds
  json.url climate_url(climate, format: :json)
end
