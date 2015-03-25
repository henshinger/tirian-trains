class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
      t.string :last_name
      t.string :given_name
      t.string :middle_name

      t.timestamps
    end
  end
end
