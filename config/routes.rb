Rails.application.routes.draw do
  resources :groupreviews
  resources :users
  resources :groups do
    resources :movies
    resources :users
  end
  resources :reviews


  root to: "groupreviews#index"

  # post 'invite' to: 'user#invite'
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
end
