json.success true
json.data do
  json.id @article.id
  json.title @article.title
  json.detail @article.detail
  json.author_id @article.author_id
  json.author User.find_by(id: @article.author_id).user_name
  json.created_at @article.created_at
  json.featured_image @article.get_image_url

  json.categories @article.categories do |category|
    json.id category.id
    json.name category.name
  end
end
