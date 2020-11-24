Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "/", to: "welcome#index"
      post "/signup", to: "users#create"
      scope :auth do
        post "/login", to: "authentication#create"
        get "/me", to: "authentication#show"
      end
    end
  end
end
