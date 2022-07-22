Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
  get "free_event", to:"pages#free_event"
  get "today_event", to:"pages#today_event"
  get "cart", to: "pages#cart"

  devise_for :users
  resources :events
  post "checkout/create", to: "checkout#create", as: "checkout_create"

  get "success", to: "checkout#success"
  get "cancel", to: "checkout#cancel"

  post "events/add_to_cart/:id", to: "events#add_to_cart", as: "add_to_cart"
  delete "events/remove_from_cart/:id", to: "events#remove_from_cart", as: "remove_from_cart"
end
