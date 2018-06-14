Rails.application.routes.draw do

  devise_for :users

  #storefront controller
  root controller: 'storefront', action: 'all_items'
  get 'categorical' => 'storefront#items_by_category'
  get 'branding' => 'storefront#items_by_brand'

  #cart controller
  post 'add_to_cart' => 'cart#add_to_cart'
  post 'order_complete' => 'cart#order_complete'
  get 'view_order' => 'cart#view_order'
  get 'checkout' => 'cart#checkout'

  root 'storefront#all_items'




  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
