json.success true
json.data do
  json.id @article.id
  json.title @article.title
  json.detail @article.detail
  json.author_id @article.author_id
  json.author @article.author.user_name
  json.author_avatar rails_blob_url(@article.author.avatar) if @article.author.avatar.attached?
  json.author_bio @article.author.bio
  json.likes @article.likes.count
  json.created_at @article.created_at
  json.updated_at @article.updated_at
  json.featured_image rails_blob_url(@article.featured_image) if @article.featured_image.attached?

  json.categories @article.categories do |category|
    json.id category.id
    json.name category.name
  end
end
