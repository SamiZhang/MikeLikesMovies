Rails.application.routes.draw do
  resources :reviews, :groupreviews
  root to: "groupreviews#index"
end
