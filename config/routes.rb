Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  root to: "home#index"
  resources :posts

  resources :users, only: [:index, :show]
  get 'userpage', to: 'users#index', as: 'userpage'


end
