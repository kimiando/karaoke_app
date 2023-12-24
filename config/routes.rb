Rails.application.routes.draw do
  resources :places, only: [:index]
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :pages, only: [:home]

  resources :users, only: %i[show edit update] do
    resources :playlists, only: [:index]
    resources :seshes, only: [:index]
    resources :homepage, only: [:index]
  end

  resources :bookmarks, only: [:create, :destroy] do
    resources :seshes, only: [:create]
  end

  resources :playlists, only: %i[new create show edit update destroy]
  get "/songs/random", to: "songs#random", as: :random_song
  resources :songs, only: %i[index show destroy]
end
