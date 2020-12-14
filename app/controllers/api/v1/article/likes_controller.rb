class Api::V1::Article::LikesController < ApiController
  before_action :authenticate_token!, only: [:index, :create, :destroy]
  before_action :load_like, only: [:destroy, :create]

  def index
    @liked_articles = Article.get_all_likes(@current_user.id).order_likes
    @user_name = @current_user.user_name
    render :index, status: :ok
  end

  def create
    if !@like.nil?
      render json: {
        success: false,
        message: "You have already liked"
      }, status: :bad_request
    else
      like = Like.create user_id: @current_user.id, article_id: params[:article_id]
      if like.save
        render json: {
          success: true,
          data: like
        }, status: :ok
      else
        render json: {
          success: false,
          message: like.errors.full_messages
        }, status: :bad_request
      end
    end
  end

  def destroy
    if @like.nil?
      return render json: {
        success: false,
        message: "Couldn't unlike"
      }, status: :not_found
    end
    @like.destroy
    render json: {
      success: true,
      message: "Unlike successful"
    }, status: :ok
  end

  private

  def load_like
    @like = Like.find_by user_id: @current_user.id, article_id: params[:article_id]
  end

  def get_author article_id
    article = Article.find_by id: article_id
    article.author.try(:id)
  end
end
