require 'sidekiq/web'

Rails.application.routes.draw do

  namespace :admin do
    resources :sells
    resources :suppliers
    resources :campaigns
    resources :discounts
    resources :services
    resources :products
    resources :clients
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  mount Sidekiq::Web => '/sidekiq'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
