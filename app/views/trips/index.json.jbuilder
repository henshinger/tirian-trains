json.array!(@trips) do |trip|
  json.extract! trip, :id, :train_id, :route_id, :trip_date, :cost
  json.url trip_url(trip, format: :json)
end
