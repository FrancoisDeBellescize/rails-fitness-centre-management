class CreateClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :classes do |t|
      t.string :name
      t.string :day
      t.text :description
      t.string :instructor_name
      t.date :date_start

      t.timestamps
    end
  end
end
