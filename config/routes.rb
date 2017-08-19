Rails.application.routes.draw do
  root 'index#index'
  resources :guests
  resources :users
  resources :contributions
  controller :pages do
    get :about
    get :history
    get :directions
  end
end
