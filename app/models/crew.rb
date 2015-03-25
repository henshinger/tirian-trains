class Crew < ActiveRecord::Base
  has_many :maintenances
  def to_s 
    "#{given_name} #{last_name}"
  end
end
