class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :disc
      t.boolean :is_active

      t.timestamps
    end
  end
end
