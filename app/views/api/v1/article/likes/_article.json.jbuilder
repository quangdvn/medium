json.id article.id
json.title article.title
json.detail article.detail
json.author_id article.author_id
json.author_name article.author.user_name
json.author_avatar rails_blob_url(article.author.avatar) if article.author.avatar.attached?
