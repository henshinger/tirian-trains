class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.references :train, index: true
      t.references :route, index: true
      t.datetime :trip_date
      t.integer :cost

      t.timestamps
    end
  end
end
