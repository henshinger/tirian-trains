class Route < ActiveRecord::Base
  has_many :trips
  validates :origin, :destination, :duration, presence: true

  def to_s
    "#{origin} - #{destination}"
  end
end
