json.success true
json.data do
  json.id @article.id
  json.title @article.title
  json.detail @article.detail
  json.author_id @article.author_id
  json.author User.find_by(id: @article.author_id).user_name
  json.category_id @article.category_id
  json.category Category.find_by(id: @article.category_id).name
  json.created_at @article.created_at
end
