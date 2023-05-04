json.extract! cart_item, :id, :shopping_session_id, :product_id, :quantity, :total, :created_at, :updated_at
json.url cart_item_url(cart_item, format: :json)
