Rails.application.routes.draw do
  resources :people

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'application#index'
  get '/home' => 'application#index'

  get '/brandi' => 'people#brandi'
  get '/brian' => 'people#brian'
  get '/guy' => 'people#guy'
  get '/ginger' => 'people#ginger'

  get '/summer' => 'application#summer'
  get '/fall' => 'application#fall'
  get '/winter' => 'application#winter'
  get '/spring' => 'application#spring'
  
  get '/contact' => 'application#contact'
  get '/about' => 'application#about'
  

  devise_scope :user do
    get '/login' => 'users/sessions#new'
  end

  

  get '/homes/:id' => 'application#index_text'
  put '/homes/:id' => 'application#index_text'

  put '/slides/:id' => 'application#slide_update'
  post '/slides/new' => 'application#slide_new'
  delete '/faqs/:id' => 'application#slide_destroy'

  get '/faq' => 'application#faq'
  put '/faqs/:id' => 'application#faq_update'
  post '/faqs/new' => 'application#faq_new'
  delete '/faqs/:id' => 'application#faq_destroy'

  put '/things_to_do_summers/:id' => 'application#summer_update'
  put '/things_to_do_falls/:id' => 'application#fall_update'
  put '/things_to_do_winters/:id' => 'application#winter_update'
  put '/things_to_do_springs/:id' => 'application#spring_update'

  post '/things_to_do_summers/new' => 'application#summer_new'
  post '/things_to_do_falls/new' => 'application#fall_new'
  post '/things_to_do_winters/new' => 'application#winter_new'
  post '/things_to_do_springs/new' => 'application#spring_new'

  delete '/things_to_do_summers/:id' => 'application#summer_destroy'
  delete '/things_to_do_falls/:id' => 'application#fall_destroy'
  delete '/things_to_do_winters/:id' => 'application#winter_destroy'
  delete '/things_to_do_springs/:id' => 'application#spring_destroy'

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
