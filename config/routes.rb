Rails.application.routes.draw do
  devise_for :admin, path: 'admin', controllers: {
    sessions: 'admin/sessions'
  }
  devise_for :experts, path: 'experts', controllers: {
    sessions: "experts/sessions"
  }
  devise_for :users, path: 'users', controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
   }

  resources :matches
  resources :users
  resources :experts

  root to: "home#index"

  # the homepage for experts
  get '/dashboard', to: 'dashboard#index'

  #the homepage for users
  get '/user_home', to: 'home#user_home'

  #the homepage for admins
  get '/admin', to: 'admin#index'
end
