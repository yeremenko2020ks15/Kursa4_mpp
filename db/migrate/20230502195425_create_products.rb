class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :pr_name
      t.string :desc
      t.string :SKU
      t.integer :category_id
      t.float :price_to_client

      # t.timestamps
    end
  end
end
