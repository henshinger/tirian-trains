json.array!(@customers) do |customer|
  json.extract! customer, :id, :given_name, :middle_name, :last_name, :birthdate, :gender
  json.url customer_url(customer, format: :json)
end
