class CreatePrEndurances < ActiveRecord::Migration[6.1]
  def change
    create_table :pr_endurances do |t|
      t.integer :endurance

    end
  end
end
