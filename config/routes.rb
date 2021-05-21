Rails.application.routes.draw do
  get 'contents/index'
  devise_for :users
  root to: "contents#index"
end
