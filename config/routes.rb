require 'sidekiq/web'
Rails.application.routes.draw do
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles do
      collection do
        get :search
      end
    end
  mount Sidekiq::Web, at:'/sidekiq'
end
