class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :user
      t.decimal :total, precision: 7, scale: 2

      t.timestamps
    end
  end
end
