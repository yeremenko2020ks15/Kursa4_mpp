class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.references :user
      t.decimal :total, precision: 12, scale: 2
      t.boolean :done

      t.timestamps
    end
  end
end
