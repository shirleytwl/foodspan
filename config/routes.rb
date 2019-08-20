Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/storage' => 'storages#index', as: 'storages'

  get '/suggestion' => 'suggestions#index', as: 'suggestions'
end