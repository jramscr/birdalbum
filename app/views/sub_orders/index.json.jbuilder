json.array!(@sub_orders) do |sub_order|
  json.extract! sub_order, :id, :name
  json.url sub_order_url(sub_order, format: :json)
end
