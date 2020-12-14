json.success true
json.data do
  json.user_name @user_name
  json.count @liked_articles.length
  json.likes @liked_articles do |article|
    json.partial! "article", article: article
  end
end
