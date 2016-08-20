Rails.application.routes.draw do
  root 'index#index'
  resources :guests
  resources :users
  resources :contributions
  controller :pages do
    get :info
    get :directions
  end
end
