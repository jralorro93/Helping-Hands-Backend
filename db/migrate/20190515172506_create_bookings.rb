class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :client_id
      t.integer :service_provider_id
      t.integer :service_id
      t.date :date
      t.time :time

      t.timestamps
    end
    
  end
end
