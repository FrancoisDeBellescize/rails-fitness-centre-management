class AssociationImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images_pages, id: false do |t|
      t.belongs_to :page, index: true
      t.belongs_to :image, index: true
    end
  end
end
