json.extract! post, :id, :user_id, :title, :text, :posted_at, :modified_at, :created_at, :updated_at
json.url post_url(post, format: :json)
