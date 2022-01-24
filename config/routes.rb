Rails.application.routes.draw do
  get 'bookings/show'
  get 'bookings/create'
  get 'cars/index'
  get 'cars/show'
  get 'cars/new'
  get 'cars/create'
  get 'cars/update'
  get 'cars/edit'
  get 'cars/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
