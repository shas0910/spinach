Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :rooms, only: [:index, :new, :create, :destroy] do
    resources :contents, only: [:index, :create] do
      resources :reads, only: [:create, :destroy]
    end
  end

end
