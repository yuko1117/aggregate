Rails.application.routes.draw do
  devise_for :users
  get 'aggregate/index'
  root to: "aggregate#index"
end
