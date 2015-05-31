json.array!(@quantity_eggs) do |quantity_egg|
  json.extract! quantity_egg, :id, :description
  json.url quantity_egg_url(quantity_egg, format: :json)
end
