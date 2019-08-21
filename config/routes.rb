Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/grocery' => 'groceries#index', as: 'groceries'
  get '/grocery/new' => 'groceries#new', as: 'new_groceries'
  post '/grocery' => 'groceries#create'
  get '/grocery/:id/edit' => 'groceries#edit', as: 'edit_groceries'
  patch '/grocery/:id/edit' => 'groceries#update'
  delete '/grocery/:id' => 'groceries#destroy', as: 'delete_groceries'

  get '/storage' => 'storages#index', as: 'storages'
  get '/suggestion' => 'suggestions#index', as: 'suggestions'

end