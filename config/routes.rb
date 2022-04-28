Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "users#index"
  resources :users
  resources :messages, only: [:create]
  resources :rooms, only: [:create, :show]
end
