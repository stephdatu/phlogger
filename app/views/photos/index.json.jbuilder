json.array!(@photos) do |photo|
  json.extract! photo, :name, :picture
  json.url photo_url(photo, format: :json)
end
