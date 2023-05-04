class CreateProductInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :product_inventories do |t|
      t.references :product, null: false, foreign_key: true
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
