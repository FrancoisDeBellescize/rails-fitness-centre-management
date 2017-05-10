class CreateMembershipOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :membership_options do |t|
      t.string :name
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end
