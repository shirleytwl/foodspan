Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails. /routing.html
  get '/reports' => 'reports#index', as: 'reports'
  get '/dashboards' => 'dashboards#index', as: 'dashboards'

  get '/grocery' => 'groceries#index', as: 'groceries'
  get '/grocery/new' => 'groceries#new', as: 'new_groceries'
  post '/grocery' => 'groceries#create'
  get '/grocery/:id/edit' => 'groceries#edit', as: 'edit_groceries'
  patch '/grocery/:id/edit' => 'groceries#update', as: 'update_groceries'
  delete '/grocery/:id' => 'groceries#destroy', as: 'delete_groceries'

  get '/storage' => 'storages#index', as: 'storages'
  post '/storage' => 'storages#create'
  get '/storage/:id/edit' => 'storages#edit', as: 'edit_storages'
  patch '/storage/:id/edit' => 'storages#update', as: 'update_storages'
  delete '/storage/:id' => 'storages#destroy', as: 'delete_storages'

  get '/suggestion' => 'suggestions#index', as: 'suggestions'

end