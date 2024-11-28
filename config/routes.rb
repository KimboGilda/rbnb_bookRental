Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check

  get "/my_bookings", to: "bookings#index"

  resources :books do
    resources :reviews
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:destroy, :index, :edit, :update]
end
