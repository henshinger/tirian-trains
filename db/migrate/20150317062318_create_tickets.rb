class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :customer, index: true
      t.date :purchase_date

      t.timestamps
    end
  end
end
