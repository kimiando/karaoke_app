Rails.application.routes.draw do
  resources :places, only: [:index]
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pages, only: [:home]

  resources :users, only: [:show] do
    resources :playlists, only: [:index]
    resources :seshes, only: [:index]
    resources :homepage, only: [:index]
  end

  resources :bookmarks, only: [:create, :destroy] do
    resources :seshes, only: [:create]
  end

  resources :playlists, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :songs, only: [:index, :show,:destroy ]
end
