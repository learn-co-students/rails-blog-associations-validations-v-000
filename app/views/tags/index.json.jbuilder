json.array!(@tag) do |tag|
  json.extract! tag, :id, :name
  json.url tag_url(post, format: :json)
end
