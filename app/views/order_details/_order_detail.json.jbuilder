json.extract! order_detail, :id, :user_id, :cart_item_id, :payment_type_id, :payment_id, :completed, :rejection, :created_at, :updated_at
json.url order_detail_url(order_detail, format: :json)
