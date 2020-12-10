Rails.application.routes.draw do
  devise_for :users
  root to: "aggregate#index"
  resources :items
end
