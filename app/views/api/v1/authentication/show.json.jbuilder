json.success true
json.data @current_user.attributes.except "created_at", "updated_at", "password_digest"
json.avatar rails_blob_url(@current_user.avatar) if @current_user.avatar.attached?
json.liked @current_user.likes.pluck :article_id
