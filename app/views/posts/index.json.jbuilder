json.array!(@posts) do |post|
  json.extract! post, :id, :name, :content, :tags
  json.url post_url(post, format: :json)
end
