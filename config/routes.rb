Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "/", to: "welcome#index"
      post "/signup", to: "users#create"

      scope :auth do
        post "/login", to: "authentication#create"
        get "/me", to: "authentication#show"
        patch "/me/edit", to: "users#update"
      end
      namespace :users do
        resources :articles, only: [:index, :show, :destroy, :create, :update]
        resources :categories, only: [:index]
      end
      namespace :article do
        resources :comments, only: [:index, :destroy, :create, :update]
        get "/suggestion", to: "suggestions#index"
        resources :likes, only: [:index]
        delete ":article_id/likes", to: "likes#destroy"
        post ":article_id/likes", to: "likes#create"
      end
      resources :users, only: :show
    end
  end
end
