json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :customer_id, :purchase_date
  json.url ticket_url(ticket, format: :json)
end
