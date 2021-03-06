Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  # devise_for :users

  # get 'users/sign_out' => "devise/sessions#destroy"

 #not sure if post request works for this
  post 'items/new' => 'items#new', as: :new_item

  get 'items' => 'items#index'

  patch '/items/:id/' => 'items#update'


 # get 'school/show'
get 'clothing/index' => 'clothing#index',       as: :clothing
get 'electronics/index' => 'electronics#index', as: :electronics
get 'furniture/index' => 'furniture#index',     as: :furniture
get 'housing/index' => 'housing#index',         as: :housing
get 'misc/index' => 'misc#index',               as: :misc
get 'school/index' => 'school#index',           as: :school
get 'services/index' => 'services#index',       as: :services






  resources :items do
    resources :comments
  end
  get 'index', to: 'index/index'
  root to: 'clothing#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
