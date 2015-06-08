json.array!(@common_names) do |common_name|
  json.extract! common_name, :id
  json.url common_name_url(common_name, format: :json)
end
