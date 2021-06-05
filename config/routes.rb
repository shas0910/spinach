Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations'}
  get "publics/about" => "publics#about"
  get "publics/contact" => "publics#contact"
  root to: "publics#about"
  resources :rooms, only: [:index, :new, :create, :destroy] do
    resources :room_users, only: :destroy
    resources :contents, only: [:index, :create] do
      resources :reads, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
    end
  end
end
