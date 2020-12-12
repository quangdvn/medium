class Api::V1::Users::ArticlesController < ApiController
  before_action :authenticate_token!, only: [:create, :destroy, :update]
  before_action :find_article, only: :show
  before_action :correct_user, only: [:destroy, :update]
  before_action :new_article, only: :create

  def index
    @articles = if params[:suggest_id]
                  Article.suggestion params[:suggest_id]
                else
                  Article.all.order_by_updated
                end
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
      render json: {success: false, message: "Create fail", errors: validation_errors}, status: :bad_request
    end
  end

  def update
    if update_article
      render json: {success: true, message: "Update successful", data: @article}, status: :ok
    else
      validation_errors = @article.errors.full_messages
      render json: {success: false, message: "Update fail", errors: validation_errors}, status: :bad_request
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

  def article_params
    params.permit Article::ARTICLE_PARAMS
  end

  def new_article
    @article = @current_user.articles.build article_params.except :categories
    @article.categories << category_list
  end

  def update_article
    old_categories = @article.categories
    @article.categories = category_list

    return true if @article.update article_params.except :categories

    @article.categories = old_categories
    false
  end

  def category_list
    categories = []
    ActiveSupport::JSON.decode(article_params["categories"]).each do |item|
      category = Category.find_by name: item["name"].downcase
      categories << (category || Category.new(name: item["name"].downcase))
    end
    categories
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
