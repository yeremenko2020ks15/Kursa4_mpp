json.extract! user_address, :id, :user_id, :state, :city, :address_street, :house_num, :postal_code, :created_at, :updated_at
json.url user_address_url(user_address, format: :json)
