json.extract! user, :id, :uid, :first_name, :last_name, :sex, :role_id, :status, :created_at, :updated_at
json.url user_url(user, format: :json)
