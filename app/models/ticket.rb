class Ticket < ActiveRecord::Base
  belongs_to :customer
  has_many :ticket_trips
  has_many :trips, through: :ticket_trips
  scope :between_dates, ->(begin_date,end_date) {
    where("purchase_date between ? and ?", begin_date, end_date)
  }
end
