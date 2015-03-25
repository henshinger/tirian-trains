json.array!(@trains) do |train|
  json.extract! train, :id, :model, :max_speed, :no_of_seats, :no_of_toilets, :reclining_seats, :folding_tables, :disability_access, :luggage_storage, :vending_machines, :food_service
  json.url train_url(train, format: :json)
end
