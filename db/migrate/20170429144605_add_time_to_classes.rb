class AddTimeToClasses < ActiveRecord::Migration[5.0]
  def change
    add_column :classes, :time, :time
  end
end
