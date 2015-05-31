json.array!(@beak_types) do |beak_type|
  json.extract! beak_type, :id, :name
  json.url beak_type_url(beak_type, format: :json)
end
