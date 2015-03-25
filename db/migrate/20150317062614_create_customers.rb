class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :given_name
      t.string :middle_name
      t.string :last_name
      t.date :birthdate
      t.string :gender

      t.timestamps
    end
  end
end
