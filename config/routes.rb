Rails.application.routes.draw do
  get '/users', to: "users#index"
  get "/users/:id", to: "users#show"
  devise_for :users
  root to: 'home#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
