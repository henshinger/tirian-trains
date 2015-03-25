class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.references :train, index: true
      t.references :crew, index: true
      t.date :maintenance_date
      t.time :maintenance_time
      t.string :task
      t.string :condition

      t.timestamps
    end
  end
end
