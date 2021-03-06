json.success true
json.data do
  json.articles_suggest @articles_suggest do |article|
    json.id article.id
    json.title article.title
    json.detail article.detail
    json.author_id article.author_id
    json.author User.find_by(id: article.author_id).user_name
    json.created_at article.created_at
    json.featured_image rails_blob_url(article.featured_image) if article.featured_image.attached?

    json.categories article.categories do |category|
      json.id category.id
      json.name category.name
    end
  end
end
