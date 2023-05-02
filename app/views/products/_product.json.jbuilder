json.extract! product, :id, :pr_name, :desc, :SKU, :category_id, :price_to_client, :created_at, :updated_at
json.url product_url(product, format: :json)
