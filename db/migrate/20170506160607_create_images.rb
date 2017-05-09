class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :filename
      t.string :alt
      t.string :caption
      t.string :url

      t.timestamps
    end
  end
end
