class Api::V1::Users::ArticlesController < ApiController
  before_action :authenticate_token!, only: [:create, :destroy, :update]
  before_action :find_article, only: :show
  before_action :correct_user, only: [:destroy, :update]
  before_action :new_article, only: :create

  def index
    @articles = Article.all

    if @articles
      render :index, status: :ok
    else
      render json: {success: false, message: "Fail to load Articles"}, status: :bad_request
    end
  end

  def show
    render :show, status: :ok
  end

  def create
    if @article.save
      render json: {success: true, message: "Create successful", data: @article}, status: :ok
    else
      validation_errors = @article.errors.full_messages
      render json: {success: false, message: "Create fail", errors: validation_errors}, status: :ok
    end
  end

  def update
    if @article.update article_update_params
      render json: {success: true, message: "Update successful", data: @article}, status: :ok
    else
      validation_errors = @article.errors.full_messages
      render json: {success: false, message: "Update fail", errors: validation_errors}, status: :ok
    end
  end

  def destroy
    if @article.destroy
      render json: {success: true, message: "Delete successful"}, status: :ok
    else
      render json: {success: false, message: "Delete fail"}, status: :bad_request
    end
  end

  private

  def article_create_params
    params.permit Article::ARTICLE_CREATE_PARAMS
  end

  def article_update_params
    params.permit Article::ARTICLE_UPDATE_PARAMS
  end

  def new_article
    @article = @current_user.articles.build article_create_params
  end

  def find_article
    @article = Article.find_by id: params[:id]
    return if @article

    render json: {success: false, message: "Article not found"}, status: :not_found
  end

  def correct_user
    @article = @current_user.articles.find_by id: params[:id]
    return if @article

    render json: {success: false, message: "Not the correct User"}, status: :forbidden
  end
end
