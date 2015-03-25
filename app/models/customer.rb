class Customer < ActiveRecord::Base
  has_many :tickets
  def to_s
    "#{given_name} #{last_name}"
  end
end
