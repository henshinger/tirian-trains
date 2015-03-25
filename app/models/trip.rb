class Trip < ActiveRecord::Base
  belongs_to :train
  belongs_to :route
  has_many :ticket_trips
  has_many :tickets, through: :ticket_trips
  scope :between_dates, ->(begin_date,end_date) {
    where("purchase_date between ? and ?", begin_date, end_date)
  }
  def to_s
    "#{trip_date}: #{route.origin} - #{route.destination}"
  end
end
