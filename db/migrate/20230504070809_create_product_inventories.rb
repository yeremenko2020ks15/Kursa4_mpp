class CreateProductInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :product_inventories do |t|
      t.references :product, null: false, foreign_key: true
      t.decimal :price, precision: 8, scale: 2
      t.integer :quantity

      t.timestamps
    end
  end
end
