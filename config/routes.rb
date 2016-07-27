Rails.application.routes.draw do
  devise_for :users
  resources :stories do
    resources :votes, only: [:create]
    resources :flags, only: [:create]
    resources :comment, only: [:create]
  end
  resources :comments, only: [:edit, :update, :destroy] do
    resources :votes, only: [:create]
    resources :flags, only: [:create]
  end
  root to: 'site#index'
end
