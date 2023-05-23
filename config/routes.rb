Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'ajax/:action', to: 'ajax#:action', :defaults => { :format => 'json' }
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
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
  resources :products
  resources :product_inventories
  resources :pr_sweetnesses
  resources :pr_colors
  resources :pr_classifications
  resources :pr_brands
  resources :pr_countries
  resources :pr_sub_categories
  resources :pr_categories
  resources :product_categories
  resources :users

  get 'cart', to: 'carts#show'
  get 'id/:category', to: 'products#find_by_cat', as: 'find_by_cat'
  get 'info', to: 'home#aboutcom.html'
  get 'pay_info', to: 'home#payinfo.html'
  get 'contacts', to: 'home#contacts.html'
  get 'search', to: 'products#search'

  post 'carts/add'
  post 'carts/remove'
  post 'order_details/create_order'
  post 'carts/create_order', to: 'carts#create_order'

  root 'home#index'
end
