module TicketsHelper
  def compute_sales(route, begin_date, end_date)
    total = 0
    Trip.where(route_id: route.id).find_each do |trip|
      total += trip.cost * trip.tickets.count 
    end
    total
  end
end
