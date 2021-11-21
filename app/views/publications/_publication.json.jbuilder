json.extract! publication, :id, :image, :content, :created_at, :updated_at
json.url publication_url(publication, format: :json)
