class OrderDetail < ApplicationRecord
  belongs_to :user
  belongs_to :cart_item
  belongs_to :payment_type
end
