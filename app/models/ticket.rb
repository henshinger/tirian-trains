class Ticket < ActiveRecord::Base
  belongs_to :customer
  has_many :ticket_trips
  has_many :trips, through: :ticket_trips
  validates :customer_id, :purchase_date, presence: true

  scope :between_dates, ->(begin_date,end_date) {
    where("purchase_date between ? and ?", begin_date, end_date)
  }
end
