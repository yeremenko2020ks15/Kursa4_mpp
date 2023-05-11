ActiveAdmin.register OrderDetail do
  permit_params :user_id, :cart_id, :payment_type_id, :payment_id, :completed, :rejection
end
