Rails.application.routes.draw do
  devise_for :experts, path: 'experts', controllers: { sessions: "experts/sessions" }
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions" }

  root to: "home#index"

  get '/dashboard', to: 'dashboard#index'
  get '/user_home', to: 'home#user_home'
end
