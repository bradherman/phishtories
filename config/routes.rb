Rails.application.routes.draw do
  devise_for :users
  resources :stories
  root to: 'site#index'
end
