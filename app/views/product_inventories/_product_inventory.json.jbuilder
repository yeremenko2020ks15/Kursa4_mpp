json.extract! product_inventory, :id, :product_id, :price, :quantity, :created_at, :updated_at
json.url product_inventory_url(product_inventory, format: :json)
