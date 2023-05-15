ActiveAdmin.register Discount do
  permit_params :product_id, :disc, :is_active
end
