class OrderDetail < ApplicationRecord
  belongs_to :user
  belongs_to :cart
  belongs_to :payment_type
end
