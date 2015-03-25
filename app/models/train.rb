class Train < ActiveRecord::Base
  has_many :maintenances
  has_many :trips
  
  def to_s
    "#{id} - #{model}"
  end
end
