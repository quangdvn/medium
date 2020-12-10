class Api::V1::Article::SuggestionsController < ApiController
  def index
    url = "http://4252beec7086.ngrok.io/suggest_article"

    @article = Article.find_by id: params[:id]
    data_set = []

    Article.all.each do |article|
      data = article.title

      data_set << data
    end

    res = Faraday.post(url) do |req|
      req.headers["Content-Type"] = "application/json"
      req.body = {query: @article.title, data: data_set}.to_json
    end

    render json: {success: false, message: "some thing wrong"} unless res

    result = JSON.parse(res.body)["result"]

    @articles_suggest = []

    result.each do |title|
      @article_suggest = Article.find_by title: title

      @articles_suggest << @article_suggest
    end

    render :index, status: :ok
  end
end
