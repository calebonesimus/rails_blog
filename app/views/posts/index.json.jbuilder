json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :summary, :author_id, :header_image, :published
  json.url post_url(post, format: :json)
end
