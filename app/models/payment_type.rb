class PaymentType < ApplicationRecord
  has_many :order_details

  def to_s
    self.p_type
  end
end
