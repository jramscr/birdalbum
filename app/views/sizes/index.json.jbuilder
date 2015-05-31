json.array!(@sizes) do |size|
  json.extract! size, :id, :femaleSize, :maleSize
  json.url size_url(size, format: :json)
end
