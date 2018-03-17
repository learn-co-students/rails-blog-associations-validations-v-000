json.array!(@users) do |user|
  json.extract! user, :id, :name
  json.url post_url(user, format: :json)
end
