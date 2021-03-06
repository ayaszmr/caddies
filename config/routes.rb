Rails.application.routes.draw do
  get 'messages/index'

  get 'messages/create'

  devise_for :users
  root 'top#index'
  resources :reports, only: [:new, :create, :index] do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:index, :show, :edit, :update]
  resources :groups, only: [:index, :new, :create, :edit, :update] do
    resources :messages, only: [:index, :create]
  end
end