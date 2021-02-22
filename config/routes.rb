Rails.application.routes.draw do
  devise_for
  get 'messages#index'
  resources :users, only: [:edit, :update]
end
