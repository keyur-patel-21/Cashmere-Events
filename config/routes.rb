Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"

  devise_for :users
  resources :events
  post "checkout/create/:id", to: "checkout#create", as: "checkout_create"

  get "success", to: "checkout#success"
  get "cancel", to: "checkout#cancel"
end
