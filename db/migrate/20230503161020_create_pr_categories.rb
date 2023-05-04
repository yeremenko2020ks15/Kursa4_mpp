class CreatePrCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :pr_categories do |t|
      t.string :category

    end
  end
end
