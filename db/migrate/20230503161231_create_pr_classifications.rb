class CreatePrClassifications < ActiveRecord::Migration[6.1]
  def change
    create_table :pr_classifications do |t|
      t.string :classification

      t.timestamps
    end
  end
end
