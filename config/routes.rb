Channelback::Application.routes.draw do

get '/users/sign_in' => 'users#sign_in',:as => :sign_in
get '/admin/sign_in' => 'admins#sign_in',:as => :admin_sign_in
get '/admin' => 'admins#sign_in'
get '/admin/users' => 'users#index',:as => :admin_users
get '/admin/activity' => 'admins#activity',:as => :activity
post '/users/sign_in' => 'users#login',:as => :login
post '/admin/sign_in' => 'admins#login',:as => :admin_login
post '/users/logout' => 'users#logout',:as => :logout
post '/admin/logout' => 'admins#logout',:as => :admin_logout
post '/comment_votes/:id' => 'comment_votes#destroy'
post '/posts/search' => 'posts#search',:as => :search
post '/admin/users/:id' => 'users#promote'
delete '/admin/users/:id' => 'users#demote'
root :to => 'posts#index'
resources :users
resources :posts
resources :admins
resources :categories
resources :comments
resources :post_votes
resources :comment_votes
#root :to => 'users#sign_in'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
