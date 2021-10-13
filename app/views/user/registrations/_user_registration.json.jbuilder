json.extract! user_registration, :id, :name, :user_name, :password, :created_at, :updated_at
json.url user_registration_url(user_registration, format: :json)
