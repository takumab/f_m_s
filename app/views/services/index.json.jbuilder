json.array!(@services) do |service|
  json.extract! service, :id, :name, :description, :image_url
  json.url service_url(service, format: :json)
end
