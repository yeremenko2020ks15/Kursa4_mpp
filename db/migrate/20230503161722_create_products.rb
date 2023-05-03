class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :pr_name
      t.float :price_for_client
      t.string :description
      t.string :SKUN
      t.integer :alc_strength
      t.integer :alc_endurance
      t.references :pr_category, null: true, foreign_key: true
      t.references :pr_sub_category, null: true, foreign_key: true
      t.references :pr_brand, null: true, foreign_key: true
      t.references :pr_country, null: true, foreign_key: true
      t.references :pr_classification, null: true, foreign_key: true
      t.references :pr_color, null: true, foreign_key: true
      t.references :pr_sweetness, null: true, foreign_key: true
      t.boolean :accessories

      t.timestamps
    end
  end
end
