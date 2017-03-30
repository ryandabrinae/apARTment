Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "users#index"

  get "/profile", to: "users#profile", as: :arts
  get "/profile/", to: "users#index", as: :user
  get "/profile/", to: "arts#new", as: :new_art
  post "/profile/", to: "search_arts#keyword", as: :create_art

def index
    # @user = User.find(params[:id])
    @arts = Art.all

    # @arts = @user.arts
  end
end
