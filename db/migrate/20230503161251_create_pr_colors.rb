class CreatePrColors < ActiveRecord::Migration[6.1]
  def change
    create_table :pr_colors do |t|
      t.string :color
    end
  end
end
