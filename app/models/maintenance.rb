class Maintenance < ActiveRecord::Base
  belongs_to :train
  belongs_to :crew
end
