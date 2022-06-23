class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price
      t.text :description
      t.string :sku
      t.text :images
      t.string :category
      t.string :tags

      t.timestamps
    end
  end
end
