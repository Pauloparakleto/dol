Rails.application.routes.draw do
  devise_for :users
  root to: 'home#welcome'
  get '/users', to: "users#index"
  get "/users/:id", to: "users#show"
  get "/banished/", to: "banish#banished_way"
  post "/banish/:id", to: "banish#banish", as: "banish"

  #Routes for notícias
  resources :articles
 # get 'articles/index'
  #get "articles/index/:id", to: "articles#show"
  #get "articles/new"
  #post "articles/new"
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
