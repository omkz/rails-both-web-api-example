Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :comments
      resources :posts
      resources :users
    end
  end

  get :token, controller: 'application'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
