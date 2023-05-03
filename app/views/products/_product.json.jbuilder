json.extract! product, :id, :pr_name, :price_for_client, :description, :SKUN, :alc_strength, :alc_endurance, :pr_category_id, :pr_sub_category_id, :pr_brand_id, :pr_country_id, :pr_classification_id, :pr_color_id, :pr_sweetness_id, :accessories, :created_at, :updated_at
json.url product_url(product, format: :json)
