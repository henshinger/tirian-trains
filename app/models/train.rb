class Train < ActiveRecord::Base
  has_many :maintenances
  has_many :trips
  validates :model, presence: true
  validates :no_of_seats, :no_of_toilets, numericality: { only_integer: true }

  def to_s
    "#{id} - #{model}"
  end
end
