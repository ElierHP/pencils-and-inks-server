class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.float :price, null: false
      t.text :description, null: false
      t.string :sku, null: false
      t.text :images, null: false
      t.string :category, null: false
      t.string :tags

      t.timestamps
    end

    add_index :products, :sku, unique: true
    add_index :products, :title, unique: true
  end
end
