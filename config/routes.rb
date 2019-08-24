Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails. /routing.html
  root 'dashboards#home'
  get '/reports' => 'reports#index', as: 'reports'
  get '/reports/:id' => 'reports#show', as: 'report'
  get '/dashboards' => 'dashboards#index', as: 'dashboards'

  get '/grocery' => 'groceries#index', as: 'groceries'
  get '/grocery/new' => 'groceries#new', as: 'new_groceries'
  post '/grocery' => 'groceries#create'
  post '/grocery/editbought' => 'groceries#updatebought', as: 'update_groceries_bought'
  get 'grocery/storage' => 'groceries#addgroceriesstoragesform', as: 'add_groceries_storages'
  patch '/grocery/storage' => 'groceries#addgroceriesstorages'
  get '/grocery/:id/edit' => 'groceries#edit', as: 'edit_groceries'
  patch '/grocery/:id/edit' => 'groceries#update', as: 'update_groceries'
  delete '/grocery/:id' => 'groceries#destroy', as: 'delete_groceries'


  get '/storage' => 'storages#index', as: 'storages'
  post '/storage' => 'storages#create'
  get '/storage/gettags' => 'storages#gettags'
  get '/storage/:id/edit' => 'storages#edit', as: 'edit_storages'
  patch '/storage/:id/edit' => 'storages#update', as: 'update_storages'
  get '/storage/:id/editqty' => 'storages#editqty', as: 'edit_storages_qty'
  patch '/storage/:id/editqty' => 'storages#updateqty', as: 'update_storages_qty'
  patch '/storage/:id' => 'storages#destroy', as: 'remove_storages'
  get '/suggestion' => 'suggestions#index', as: 'suggestions'

  get '*unmatched_route', to: 'dashboards#home'
end