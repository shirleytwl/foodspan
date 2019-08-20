Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails. /routing.html
  get '/reports' => 'reports#index', as: 'reports'

end
