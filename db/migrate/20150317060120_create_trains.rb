class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :model
      t.integer :max_speed
      t.integer :no_of_seats
      t.integer :no_of_toilets
      t.boolean :reclining_seats
      t.boolean :folding_tables
      t.boolean :disability_access
      t.boolean :luggage_storage
      t.boolean :vending_machines
      t.boolean :food_service

      t.timestamps
    end
  end
end
