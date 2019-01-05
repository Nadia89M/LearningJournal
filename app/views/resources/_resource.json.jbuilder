json.extract! resource, :id, :url, :memo, :image, :document, :created_at, :updated_at
json.url resource_url(resource, format: :json)
