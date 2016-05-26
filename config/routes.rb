Rails.application.routes.draw do
  resources :reviews
  resources :groupreviews
  resources :users
  root to: "groupreviews#index"

  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
end
