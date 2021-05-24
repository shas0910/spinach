Rails.application.routes.draw do
  get 'contents/index'
  devise_for :users
  root to: "contents#index"
  resources :rooms, only: [:index, :new, :create, :destroy]
end
