class AddClasseRefToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :classe, foreign_key: true
  end
end
