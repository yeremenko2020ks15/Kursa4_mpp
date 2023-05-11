class ProductInventory < ApplicationRecord
  after_create :add_product
  belongs_to :product


  def add_product
    pr_in = ProductInventory.last
    pr_id = pr_in.product_id
    quantity = pr_in.quantity
    product = Product.find_by(id: pr_id)
    new_quantity = product.quantity + quantity
    product.update(quantity: new_quantity)
  end

end
