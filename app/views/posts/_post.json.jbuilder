json.extract! post, :id, :titulo, :cuerpo, :User_id, :created_at, :updated_at
json.url post_url(post, format: :json)
