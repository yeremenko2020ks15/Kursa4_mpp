class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cart, null: false, foreign_key: true
      t.references :payment_type, null: false, foreign_key: true
      t.string :payment_id
      t.boolean :completed
      t.boolean :rejection

      t.timestamps
    end
  end
end
