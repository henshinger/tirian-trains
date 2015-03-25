class CreateTicketTrips < ActiveRecord::Migration
  def change
    create_table :ticket_trips do |t|
      t.references :ticket, index: true
      t.references :trip, index: true

      t.timestamps
    end
  end
end
