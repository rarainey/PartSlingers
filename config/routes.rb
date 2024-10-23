# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: redirect('/home')


  # Checklist Controller
  get 'checklist', to: 'checklist#show', as: 'checklist'
  delete 'checklist/:id', to: 'checklist#destroy', as: 'checklist_delete'
  get 'checklist/from-cart', to: 'checklist#cart_to_checklist', as: 'cart_to_checklist'
  get 'checklist/to-cart', to: 'checklist#checklist_to_cart', as: 'checklist_to_cart'
  get 'checklist/wattage-calculator', to: 'checklist#get_wattage_selections', as: 'get_wattage'
  get 'checklist/wattage-calculator/display', to: 'checklist#display_wattage', as: 'display_wattage'

  # Comparison Controller
  get 'gpu-comparison', to: 'comparison#get_selections', as: 'gpu_selections'
  get 'gpu-comparison/display', to: 'comparison#display_comparison', as: 'display_comparison'

  # Pages Controller
  get 'home', to: 'pages#home', as: 'home'

  # Shop Controller
  get 'shop', to: 'shop#index', as: 'shop'
  post 'shop', to: 'shop#create'
  get 'shop/new', to: 'shop#new', as: 'new_item'
  get 'shop/:id/edit', to: 'shop#edit', as: 'edit_item'
  get 'shop/:id', to: 'shop#show', as: 'item'
  patch 'shop/:id', to: 'shop#update'
  patch 'shop/:id/hide', to: 'shop#hide', as: 'hide_item'
  post 'shop/cart/:id', to: 'shop#add_to_cart', as: 'add_to_cart'
  post 'shop/checklist/:id', to: 'shop#add_to_checklist', as: 'add_to_checklist'

  # Cart Controller
  get 'cart', to: 'cart#cart', as:'cart'
  delete 'cart/:id', to: 'cart#destroy', as: 'cart_delete'
  patch 'cart/:id&:quantity', to: 'cart#modify_quantity', as: 'cart_modify_quantity'

  # Checkout Controller
  get 'checkout/shipping', to: 'checkout#shipping', as: 'shipping' 
  patch 'checkout/shipping', to: 'checkout#update_shipping'
  post 'checkout/shipping', to: 'checkout#new_shipping'
  get 'checkout/payment', to: 'checkout#payment', as: 'payment' 
  patch 'checkout/payment', to: 'checkout#update_payment'
  post 'checkout/payment', to: 'checkout#new_payment'
  get 'checkout/review', to: 'checkout#review', as: 'review'
  patch 'checkout/order', to: 'checkout#order', as: 'place_order'

  # Orders Controller
  get 'orders', to: 'orders#index', as: 'orders'
  get 'orders/:id', to: 'orders#show', as: 'receipt'

  # Bundles Controller
  get 'bundles', to: 'bundles#index', as: 'bundles'
  get 'bundles/:id/edit', to: 'bundles#edit', as: 'edit_bundle'
  get "bundles/:id", to: 'bundles#show', as: 'bundle'
  patch 'bundles/:id', to: 'bundles#update'
  post 'bundles/cart/:id', to: 'bundles#bundle_to_cart', as: 'bundle_to_cart'
  post 'bundles/checklist/:id', to: 'bundles#bundle_to_checklist', as: 'bundle_to_checklist'
end