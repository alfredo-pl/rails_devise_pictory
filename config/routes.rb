Rails.application.routes.draw do
  devise_for :users , controllers: {
    registrations: 'users/registrations'
  }
  get 'dashboard', to: 'stories#dashboard', as: 'dashboard'
  get 'admins/index'
  get 'admins/admin_true'
  get 'admins/admin_false'
  resources :stories
  root 'stories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
