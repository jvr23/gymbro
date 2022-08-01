json.extract! review, :id, :review, :user_id, :gym_id, :created_at, :updated_at
json.url review_url(review, format: :json)
