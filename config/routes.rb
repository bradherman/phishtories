Rails.application.routes.draw do
  resources :stories
  root to: 'site#index'
end
