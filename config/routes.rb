Rails.application.routes.draw do
  resources :groupreviews
  resources :users
  resources :groups do
    resources :users
  end


  root to: "groupreviews#index"
end
