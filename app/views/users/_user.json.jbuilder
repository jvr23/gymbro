json.extract! user, :id, :name, :lastname, :mail, :age, :created_at, :updated_at
json.url user_url(user, format: :json)
