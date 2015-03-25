json.array!(@maintenances) do |maintenance|
  json.extract! maintenance, :id, :train_id, :crew_id, :maintenance_date, :maintenance_time, :task, :condition
  json.url maintenance_url(maintenance, format: :json)
end
