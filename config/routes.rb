MyFirstApp::Application.routes.draw do

  get "news_posts/index"
  get "/contact" => "pages#contact"
  get "/about" => "pages#about"
  get "/interesting_facts" => "pages#interesting_facts"
  get "/about_me" => "pages#about"

  # news_posts resource
  get "/news_posts" => "news_posts#index"
  post "/news_posts" => "news_posts#create"
  get "/news_posts/new" => "news_posts#new"
  get "/news_posts/:id" => "news_posts#show", as: :news_post
  get "/news_posts/:id/edit" => "news_posts#edit"
  patch "/news_posts/:id" => "news_posts#update"
  delete "/news_posts/:id" => "news_posts#destroy"

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
