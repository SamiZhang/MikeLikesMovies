Rails.application.routes.draw do
  resources :reviews
  resources :groupreviews
  resources :users
  root to: "groupreviews#index"
end
