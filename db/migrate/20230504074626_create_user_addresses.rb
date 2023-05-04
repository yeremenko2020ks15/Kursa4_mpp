class CreateUserAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :user_addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :state
      t.string :city
      t.string :address_street
      t.integer :house_num
      t.integer :postal_code

    end
  end
end
