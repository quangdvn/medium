json.success true
json.data do
  json.count @comments.count
  json.comments @comments do |comment|
    json.id comment.id
    json.detail comment.detail
    json.user_id comment.user_id
    json.user comment.user.user_name
    json.user_avatar rails_blob_url(comment.user.avatar) if comment.user.avatar.attached?
    json.article_id comment.article_id
    json.updated_at comment.updated_at
  end
end
