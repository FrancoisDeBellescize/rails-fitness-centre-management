json.extract! image, :id, :filename, :alt, :caption, :url, :created_at, :updated_at
json.url image_url(image, format: :json)
