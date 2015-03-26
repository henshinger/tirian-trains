class Maintenance < ActiveRecord::Base
  belongs_to :train
  belongs_to :crew
  validates :train_id, :crew_id, :maintenance_date, :maintenance_time, :task, :condition, presence: true

end
