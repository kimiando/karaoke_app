Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pages, only: [:home]
  resources :users, only: [:show] do
    resources :playlists, only: [:index]
    resources :seshes, only: [:index]
  end

  resources :bookmarks, only: [:create, :destroy] do
    resources :seshes, only: [:create]
  end

  resources :playlist, only: [:new, :create, :show, :destroy]
  resources :songs, only: [:index, :show]
end
