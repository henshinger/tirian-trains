class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :origin
      t.string :destination
      t.integer :duration

      t.timestamps
    end
  end
end
