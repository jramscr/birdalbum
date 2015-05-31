json.array!(@zones) do |zone|
  json.extract! zone, :id, :description, :maximumAltitude, :minimumAltitude
  json.url zone_url(zone, format: :json)
end
