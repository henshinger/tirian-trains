class Crew < ActiveRecord::Base
  has_many :maintenances
  validates :given_name, :middle_name, :last_name, presence: true

  def to_s 
    "#{given_name} #{last_name}"
  end
end
