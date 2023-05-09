Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'ajax/:action', to: 'ajax#:action', :defaults => { :format => 'json' }
  devise_for :users
  resources :discounts
  resources :pr_alcohols
  resources :pr_volumes
  resources :pr_endurances
  resources :comments
  resources :order_details
  resources :payment_types
  resources :user_addresses
  resources :user_payments
  resources :cart_items
  resources :shopping_sessions

  resources :product_inventories
  resources :pr_sweetnesses
  resources :pr_colors
  resources :pr_classifications
  resources :pr_brands
  resources :pr_countries
  resources :pr_sub_categories
  resources :pr_categories
  resources :product_categories
  get 'cart', to: 'carts#show'
  post 'carts/add'
  post 'carts/remove'
  resources :products
  root 'home#index'
  # get 'app/home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
