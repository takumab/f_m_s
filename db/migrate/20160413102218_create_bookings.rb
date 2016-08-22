class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :service_id
      t.float :total
    end
    add_index :bookings, :user_id
    add_index :bookings, :service_id
  end
end
