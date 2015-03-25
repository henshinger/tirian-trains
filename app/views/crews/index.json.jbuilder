json.array!(@crews) do |crew|
  json.extract! crew, :id, :last_name, :given_name, :last_name
  json.url crew_url(crew, format: :json)
end
