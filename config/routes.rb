Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/storage' => 'storages#index', as: 'storages'
  post '/storage' => 'storages#create'
  post '/storage' => 'storages#create'
  get '/storage/:id/edit' => 'storages#edit', as: 'edit_storages'
  patch '/storage/:id/edit' => 'storages#update', as: 'update_storages'
  get '/storage/:id/editqty' => 'storages#editqty', as: 'edit_storages_qty'
  patch '/storage/:id/editqty' => 'storages#updateqty', as: 'update_storages_qty'
  delete '/storage/:id' => 'storages#destroy', as: 'delete_storages'

  get '/suggestion' => 'suggestions#index', as: 'suggestions'
end