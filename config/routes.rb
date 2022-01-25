Rails.application.routes.draw do
  devise_for :users
  root to: 'cars#index'
  resources :cars do
    resources :bookings, only: [:show, :create, :new, :update, :edit]
  end
end
