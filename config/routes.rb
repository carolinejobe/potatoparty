Rails.application.routes.draw do
  root 'index#index'
  resources :guests
  resources :users
  resources :contributions
end
