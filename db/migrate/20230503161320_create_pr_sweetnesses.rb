class CreatePrSweetnesses < ActiveRecord::Migration[6.1]
  def change
    create_table :pr_sweetnesses do |t|
      t.string :sweetness

    end
  end
end
