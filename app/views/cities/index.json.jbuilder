json.array!(@cities) do |city|
  json.extract! city, :id, :latitude, :longitude, :country
  json.url city_url(city, format: :json)
end
