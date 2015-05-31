json.array!(@contacts) do |contact|
  json.extract! contact, :id, :value
  json.url contact_url(contact, format: :json)
end
