class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :pr_name
      t.decimal :price_for_client, precision: 5, scale: 2
      t.text :description
      t.string :SKUN
      t.integer :quantity
      t.references :pr_volume, null: true, foreign_key: true
      t.references :pr_alcohol, null: true, foreign_key: true
      t.references :pr_endurance, null: true, foreign_key: true
      t.references :pr_category, null: true, foreign_key: true
      t.references :pr_sub_category, null: true, foreign_key: true
      t.references :pr_brand, null: true, foreign_key: true
      t.references :pr_country, null: true, foreign_key: true
      t.references :pr_color, null: true, foreign_key: true
      t.references :pr_sweetness, null: true, foreign_key: true

      t.timestamps
    end
  end
end
