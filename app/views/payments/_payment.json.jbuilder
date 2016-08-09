json.extract! payment, :id, :transaction_number, :confirmed, :created_at, :updated_at
json.url payment_url(payment, format: :json)