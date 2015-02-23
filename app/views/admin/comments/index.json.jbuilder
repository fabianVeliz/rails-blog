json.array!(@comments) do |comment|
  json.extract! comment, :id, :author, :avatar, :body, :post, :post_id, :answers
  json.url comment_url(comment, format: :json)
end
