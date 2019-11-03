Rails.application.routes.draw do
  resources :infos
  resources :houses
  get 'home/index'
  root to: 'home#index'
end
