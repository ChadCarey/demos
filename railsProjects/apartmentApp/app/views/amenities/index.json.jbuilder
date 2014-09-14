json.array!(@amenities) do |amenity|
  json.extract! amenity, :id, :amenity
  json.url amenity_url(amenity, format: :json)
end
