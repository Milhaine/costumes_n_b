Rails.application.routes.draw do
  devise_for :users
  root to: "costumes#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :costumes, only: %i[index show new create] do
    resources :rentals, only: %i[new create]
    resources :reviews
  end
  resource :users do
    resources :rentals, only: %i[index]
  end
end
