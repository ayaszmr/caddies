Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :reports, only: [:new, :create, :index]
  resources :users, only: [:index, :show]
end
