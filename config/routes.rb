Rails.application.routes.draw do
  get 'aggregate/index'
  root to: "aggregate#index"
end
