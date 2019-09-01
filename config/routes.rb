Rails.application.routes.draw do
  resources :houses
  get 'home/index'
  root to: 'home#index'
end
