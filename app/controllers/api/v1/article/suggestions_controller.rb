class Api::V1::Article::SuggestionsController < ApiController
  def index
    url = 'http://4accab66b220.ngrok.io/suggest_article'

    @article = Article.find_by id: params[:id]
    data_set = []

    Article.all.each do |article|
      data = article.title

      data_set << data
    end


    res = Faraday.post(url) do |req|
      req.headers['Content-Type'] = 'application/json'
      req.body = {query: @article.title, data: data_set}.to_json
    end
  
    render json: {success: false, message: "some thing wrong"} unless res

    result = JSON.parse(res.body)['result']

    render json: {success: true, result: result}
  end
end
