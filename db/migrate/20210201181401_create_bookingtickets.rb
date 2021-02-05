class CreateBookingtickets < ActiveRecord::Migration[6.1]
  def change
    create_table :bookingtickets do |t|
      t.string :event_name
      t.string :location
      t.string :Date
      t.string :Price

      t.timestamps
    end
  end
end
