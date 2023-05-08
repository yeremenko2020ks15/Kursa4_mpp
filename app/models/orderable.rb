class Orderable < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total
    product.price_for_client * quantity
  end
end
