json.extract! message, :id, :name, :phone, :email, :message, :created_at, :updated_at
json.url message_url(message, format: :json)
