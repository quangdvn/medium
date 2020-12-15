json.success true
json.data @user.attributes.except "created_at", "updated_at", "password_digest"
json.avatar rails_blob_url(@user.avatar) if @user.avatar.attached?
