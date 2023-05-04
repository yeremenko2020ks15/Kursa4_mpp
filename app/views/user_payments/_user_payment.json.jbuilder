json.extract! user_payment, :id, :user_id, :code, :cvv, :date, :name, :created_at, :updated_at
json.url user_payment_url(user_payment, format: :json)
