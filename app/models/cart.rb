class Cart < ApplicationRecord
  belongs_to :user
  has_many :orderables
  has_many :products, through: :orderables
  has_many :order_details

  def total
    orderables.to_a.sum{ |orderable| orderable.total}
  end

  def to_s
    self.id
  end
end
