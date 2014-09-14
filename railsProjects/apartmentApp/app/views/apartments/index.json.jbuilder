json.array!(@apartments) do |apartment|
  json.extract! apartment, :id, :bedrooms, :bathrooms, :cost, :monthly
  json.url apartment_url(apartment, format: :json)
end
