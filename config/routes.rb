Rails.application.routes.draw do
  get 'profile/index'
  resources :posts do
    resources :comments
  end
  devise_for :users, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :users, only: :show
end
