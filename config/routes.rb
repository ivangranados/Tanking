Station::Application.routes.draw do

  get "map/gmaps"

  get "maps/view"

  get "tanking_log/new"

  get "tanking_log/create"

  get "tanking_log/show"

  get "tanking_log/edit"

  get "tanking_log/update"

  get "tanking_log/destroy"

  get "tanking_log/index"

  get "gas_station/new"

  get "gas_station/create"

  get "gas_station/show"

  get "gas_station/edit"

  get "gas_station/update"

  get "gas_station/destroy"

  get "gas_station/index"

  get "cars/index"

  get "cars/show"

  get "cars/edit"

  get "cars/update"

  get "cars/destroy"

  get "cars/create"

  get "cars/new"

  get "cars/index"

  devise_for :users

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  resources :cars
  resources :gas_stations

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'cars#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end
