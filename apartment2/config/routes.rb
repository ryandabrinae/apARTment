Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "users#index"

  get "/profile/", to: "users#index", as: :user

  get "/profile/gallery", to: "arts#index", as: :arts
  post "/profile/gallery", to: "arts#create", as: :create_art
  get "profile/gallery/:id", to: "arts#show", as: :art
  delete "profile/gallery/:id", to: "arts#destroy"

  get "/profile/rooms", to: "rooms#index", as: :rooms
  get "/profile/rooms/new", to: "rooms#new", as: :new_room
  post "/profile/rooms/", to: "rooms#create"
  get "profile/rooms/:id", to: "rooms#show", as: :room

  post "/profile/room-art", to: "artsrooms#create", as: :arts_rooms
  get "/profile/room-art/:id", to: "artsrooms#show", as: :arts_room

  get "/search", to: "search#index", as: :searches
  post "/search", to: "search#keyword", as: :search_keyword
  get "/search/:id", to: "search#show", as: :search

end
