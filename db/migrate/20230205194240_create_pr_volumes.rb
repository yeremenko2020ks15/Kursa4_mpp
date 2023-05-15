class CreatePrVolumes < ActiveRecord::Migration[6.1]
  def change
    create_table :pr_volumes do |t|
      t.string :volume

    end
  end
end
