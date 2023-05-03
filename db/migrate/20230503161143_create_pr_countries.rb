class CreatePrCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :pr_countries do |t|
      t.string :country

      t.timestamps
    end
  end
end
