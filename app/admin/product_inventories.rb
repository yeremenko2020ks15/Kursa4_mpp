ActiveAdmin.register ProductInventory do

  permit_params :product_id, :price, :quantity

  # form do |f|
  #   inputs "Product add" do
  #     input :product_id, as: :select, :collection => Product.all
  #     input :price
  #     input :quantity
  #   end
  # end
  show do
    attributes_table do
      row :product
      row :quantity
      row :price
    end
  end




end
