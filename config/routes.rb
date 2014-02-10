  Apprenticeship::Application.routes.draw do
 
  resources :case_studies

  authenticated :user do
  # root :to => 'home#index'
    root :to => 'static_pages#home'
  end
  root :to => "static_pages#home"
  devise_for :users
  resources :users
  resources  :how_to_applies
  resources  :employer_photos
  resources  :employers
  resources  :regions
  resources  :training_providers

  resources  :choosing_an_apprenticeships

  resources  :what_is_an_apprenticeships

  resources  :sectors
  resources  :careers
  resources  :subjects

  resources  :apprenticeship_types

  mount RedactorRails::Engine => '/redactor_rails'

  get "static_pages/home"

  get "static_pages/help"

  resources :types_of_apprenticeships

  resources :apprenticeship_types do
    member do
      get 'render_to_word'
    end
  end

  resources :articles
  resources :types_of_jobs
  resources :phone_feeds, :only => [ :index ] do

    end

  # get       "phone_feeds"

# get "phone_feeds" do

# end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
    # match 'phone_feeds' => 'phone_feeds#index', :as => :phone_feeds
    get 'phone_feeds/date_since/:last_date' => 'phone_feeds#date_since'


    # match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
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
  root :to => 'static_pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
