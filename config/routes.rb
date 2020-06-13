Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins

  resources :books, only: [:show]
  resources :authors, only: [:show]
  resources :groups, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'groups#index'
end
