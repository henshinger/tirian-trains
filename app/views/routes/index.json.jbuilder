json.array!(@routes) do |route|
  json.extract! route, :id, :origin, :destination, :duration
  json.url route_url(route, format: :json)
end
