class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :full_name
      t.string :email
      t.string :telephone
      t.boolean :is_admin

      t.timestamps
    end
  end
end
