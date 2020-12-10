Rails.application.routes.draw do
  devise_for :users
  root to: "aggregate#index"
  resources :items do
    collection do
      get 'search'
    end
  end
end
