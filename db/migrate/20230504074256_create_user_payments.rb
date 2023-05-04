class CreateUserPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :user_payments do |t|
      t.references :user, null: false, foreign_key: true
      t.string :code
      t.integer :cvv
      t.string :date
      t.string :name

    end
  end
end
