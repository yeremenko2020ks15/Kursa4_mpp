ActiveAdmin.register ProductInventory do
  permit_params :product_id, :price, :quantity

  show do
    attributes_table do
      row :product
      row :quantity
      row :price
    end
  end
end
