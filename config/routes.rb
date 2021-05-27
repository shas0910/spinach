Rails.application.routes.draw do
  devise_for :users
  get "publics/about" => "publics#about"
  root to: "publics#about"
  resources :rooms, only: [:index, :new, :create, :destroy] do
    resources :contents, only: [:index, :create] do
      resources :reads, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
    end
  end
end
