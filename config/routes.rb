Rails.application.routes.draw do
  devise_for :users
  get "static_pages/landing_page"
  get "static_pages/dashboard"
  get "feedbacks/new"
  get "feedbacks/create"
  root 'static_pages#landing_page'
  get 'about', to: 'pages#about'
  get 'contact', to: 'feedbacks#new'
  post 'feedbacks/create', to: 'feedbacks#create'

  resources :products do
    resources :reviews
  end
  resources :customers
  resources :suppliers
  resources :categories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
