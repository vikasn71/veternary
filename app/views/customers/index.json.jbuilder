json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :next_appointment, :reason
  json.url customer_url(customer, format: :json)
end
