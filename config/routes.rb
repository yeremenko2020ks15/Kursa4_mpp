Rails.application.routes.draw do
  resources :product_inventories
  resources :pr_sweetnesses
  resources :pr_colors
  resources :pr_classifications
  resources :pr_brands
  resources :pr_countries
  resources :pr_sub_categories
  resources :pr_categories
  resources :product_categories
  resources :products
  root 'home#index'
  # get 'app/home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
