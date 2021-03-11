Rails.application.routes.draw do
  devise_for :users
  root to: 'home#welcome'
  get '/users', to: "users#index"
  get "/users/:id", to: "users#show"
  post "banish/:id", to: "banish#banish", as: "banish"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
