json.array!(@pictures) do |picture|
  json.extract! picture, :id, :url, :name
  json.url picture_url(picture, format: :json)
end
