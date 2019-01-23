Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    resources :roles
    resources :comments
    resources :posts
    resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
