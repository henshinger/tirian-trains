class Customer < ActiveRecord::Base
  has_many :tickets
  validates :given_name, :middle_name, :last_name, :birthdate, :gender, presence: true

  def to_s
    "#{given_name} #{last_name}"
  end
end
