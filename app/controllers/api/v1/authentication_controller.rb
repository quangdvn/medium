class Api::V1::AuthenticationController < ApiController
  before_action :authenticate_token!, only: :show

  def create
    user = User.find_by email: params[:email]
    return render json: {success: false, message: "Account not found"}, status: :not_found if user.nil?

    case user.check_valid :password, params[:password]
    when "success"
      valid_token = JsonWebToken.encode id: user.id, is_admin: user.is_admin
      render json: {success: true, token: valid_token}, status: :ok
    when "invalid_password"
      render json: {success: false, message: "Incorrect password"}, status: :bad_request
    else
      render json: {success: false, message: "Login fail"}, status: :bad_request
    end
  end

  def show
    render :show
  end
end
