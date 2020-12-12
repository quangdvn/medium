class Api::V1::Article::CommentsController < ApiController
  before_action :authenticate_token!, only: [:create, :destroy, :update]
  before_action :correct_user, only: [:destroy, :update]

  def index
    @comments = Comment.get_comment_by_articles(params[:id]).order_by_updated

    if @comments
      render :index, status: :ok
    else
      render json: {success: false, message: "Fail to load Comments"}, status: :bad_request
    end
  end

  def create
    @comment = @current_user.comments.build comment_params

    if @comment.save
      render json: {success: true, message: "Create successful", data: @comment}, status: :ok
    else
      validation_errors = @comment.errors.full_messages
      render json: {success: false, message: "Create fail", errors: validation_errors}, status: :bad_request
    end
  end

  def update
    if @comment.update update_params
      render json: {success: true, message: "Update successful", data: @comment}, status: :ok
    else
      validation_errors = @comment.errors.full_messages
      render json: {success: false, message: "Update fail", errors: validation_errors}, status: :bad_request
    end
  end

  def destroy
    if @comment.destroy
      render json: {success: true, message: "Delete successful"}, status: :ok
    else
      render json: {success: false, message: "Delete fail"}, status: :bad_request
    end
  end

  private

  def comment_params
    params.permit Comment::COMMENT_PARAMS
  end

  def update_params
    params.permit :detail
  end

  def correct_user
    @comment = @current_user.comments.find_by id: params[:id]
    return if @comment

    render json: {success: false, message: "Not the correct User"}, status: :forbidden
  end
end
