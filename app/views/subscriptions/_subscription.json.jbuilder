json.extract! subscription, :id, :user_id, :amount, :transction_number, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)