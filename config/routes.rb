Rails.application.routes.draw do
  devise_for :users
  root to: "profiles#index"
  resources :profiles
  resources :messages, only: [:create]
  resources :rooms, only: [:create, :show]
end
