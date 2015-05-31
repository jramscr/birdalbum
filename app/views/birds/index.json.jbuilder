json.array!(@birds) do |bird|
  json.extract! bird, :id, :commonName, :scientificName, :description
  json.url bird_url(bird, format: :json)
end
