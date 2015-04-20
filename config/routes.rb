Rails.application.routes.draw do

  namespace :hr do
    namespace :config do
      resources :languages
    end
  end

  namespace :hr do
    namespace :config do
      resources :offices
    end
  end

  namespace :hr do
    namespace :config do
      resources :departments
    end
  end

  namespace :hr do
    namespace :config do
      resources :divisions
    end
  end

  namespace :hr do
    namespace :config do
      resources :ministries
    end
  end

  namespace :hr do
    namespace :config do
      resources :provinces
    end
  end

  namespace :hr do
    namespace :config do
      resources :religions
    end
  end

  namespace :hr do
    namespace :config do
      resources :nations
    end
  end

  namespace :hr do
    namespace :config do
      resources :countries
    end
  end

  namespace :hr do
    namespace :employee do
      resources :employeeinfo
    end
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'
   get 'welcome/' => 'welcome#index'
   #get 'hr/employee/' => 'hr/employee/employeeinfo#index'

   #match 'hr/employee/' => 'employeeinfo#index', :via => :get
   # match ':controller(/:action(/:id))', :via => :get
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
