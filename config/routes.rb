Rails.application.routes.draw do
  get 'post/create'
  post 'post/store'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts
    end
  end 
end
