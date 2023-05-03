class CreatePrSubCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :pr_sub_categories do |t|
      t.string :sub_category

      t.timestamps
    end
  end
end
