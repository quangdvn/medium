class Api::V1::UsersController < ApiController
  before_action :authenticate_token!, only: :update

  def index
    @users = User.all.order_by_articles
    if @users
      render :index, status: :ok
    else
      render json: {success: false, message: "Fail to load users"}, status: :bad_request
    end
  end

  def create
    @user = User.create user_create_params

    if @user.save
      @token = JsonWebToken.encode id: @user.id, is_host: false
      render :create, status: :ok
    else
      validation_errors = @user.errors.full_messages
      render json: {success: false, message: "Unable to create this account.", errors: validation_errors},
              status: :bad_request
    end
  end

  def update
    if @current_user.update user_update_params
      render :update, status: :ok
    else
      validation_errors = @user.errors.full_messages
      render json: {success: false, message: "Unable to update this account.", errors: validation_errors},
              status: :bad_request
    end
  end

  def show
    @user = User.find_by id: params[:id]
    if @user
      render :show, status: :ok
    else
      render json: {success: false, message: "User not found"}, status: :not_found
    end
  end

  private

  def user_create_params
    params.permit User::USER_CREATE_PARAMS
  end

  def user_update_params
    params.permit User::USER_UPDATE_PARAMS
  end
end
