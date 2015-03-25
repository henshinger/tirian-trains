module TripsHelper
  def arrival_time(date, duration)
    (date+duration).strftime("%H:%M")
  end
end
