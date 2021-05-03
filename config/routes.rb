Rails.application.routes.draw do
  get 'admins/index'

  get 'users/update'
  patch 'users/:id', to: 'users#update', as: 'users'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :stories
  root 'stories#index'
  get 'users/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
