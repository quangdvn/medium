json.success true
json.data do
  json.count @comments.count
  json.comments @comments do |comment|
    json.id comment.id
    json.detail comment.detail
    json.user_id comment.user_id
    json.user User.find_by(id: comment.user_id).user_name
    json.article_id comment.article_id
    json.created_at comment.created_at
  end
end
