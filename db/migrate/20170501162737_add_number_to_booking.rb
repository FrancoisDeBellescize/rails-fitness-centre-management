class AddNumberToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :number, :integer
  end
end
