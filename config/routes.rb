Rails.application.routes.draw do
  resources :countries, only: [:index, :show]
  resources :travelers, only: [:index, :show]
  resources :vacations, only: [:new, :create]
end
