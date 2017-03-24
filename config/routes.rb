Rails.application.routes.draw do
  get 'rooms/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'rooms#index'
  namespace :api do
    namespace :v1 do
      jsonapi_resources :rooms
      jsonapi_resources :room_allocations
      jsonapi_resources :payments
      jsonapi_resources :customers
    end
  end

  resources :rooms
  resources :room_allocations
  resources :payments
  resources :customers
end
