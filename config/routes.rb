EshTestApp::Application.routes.draw do
  
  root to: 'main#index'

  devise_for :users

  get '/location', to: 'main#location'

  get '/contact', to: 'main#contact'

  get '/instructors', to: 'main#instructors'

  get '/workshops', to: 'main#workshops'

  get '/disciplines', to: 'main#disciplines'

  get '/upcoming_classes', to: 'main#upcoming_classes'

  get '/private_lessons', to: 'main#private_lessons'

  get '/student', to: 'users#student_index'

  get '/instructor', to: 'users#instructor_index'

  get '/admin', to: 'admin#admin_index'

  get '/recent_registrations', to: 'admin#recent_registrations'

  resources :main

  resources :course_registrations

  resources :disciplines

  resources :courses

  resources :users

  resources :charges

  resources :seven_week_sessions

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
