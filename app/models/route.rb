class Route < ActiveRecord::Base
  has_many :trips
  def to_s
    "#{origin} - #{destination}"
  end
end
