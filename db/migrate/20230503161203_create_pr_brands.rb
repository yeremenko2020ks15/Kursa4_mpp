class CreatePrBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :pr_brands do |t|
      t.string :brand

    end
  end
end
