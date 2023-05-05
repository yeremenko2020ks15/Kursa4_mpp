class CreatePrAlcohols < ActiveRecord::Migration[6.1]
  def change
    create_table :pr_alcohols do |t|
      t.float :alcohol

    end
  end
end
