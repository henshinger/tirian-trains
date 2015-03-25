class TicketTrip < ActiveRecord::Base
  belongs_to :ticket
  belongs_to :trip
end
