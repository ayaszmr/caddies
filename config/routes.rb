Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :reports, only: [:new, :create, :index] do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:index, :show, :edit, :update]
  resources :groups, only: [:new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end