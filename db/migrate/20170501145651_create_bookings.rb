class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :membership_id

      t.timestamps
    end
  end
end
