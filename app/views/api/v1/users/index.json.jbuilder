json.success true
json.data do
  json.count @users.count
  json.users @users do |user|
    json.id user.id
    json.name user.user_name
    json.bio user.bio
    json.avatar rails_blob_url(user.avatar) if user.avatar.attached?
    json.article_count user.articles.count
  end
end
