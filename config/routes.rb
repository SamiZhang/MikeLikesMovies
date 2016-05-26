Rails.application.routes.draw do
  resources :groupreviews
  resources :users
  resources :groups do
    resources :movies
    resources :users
  end


  root to: "groupreviews#index"

  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
end
