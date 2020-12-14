json.success true
json.data @current_user.attributes.except "created_at", "updated_at", "password_digest"
json.liked @current_user.likes.pluck :article_id
