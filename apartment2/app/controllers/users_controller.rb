class UsersController < ApplicationController

  def index
    # @user = User.find(params[:id])
    @arts = Art.all

    # @arts = @user.arts
  end

  def profile
    # @user = User.find(params[:id])
    @art = Art.new
  end

  def create
    @art = Art.new(art_params)
        if @art.save
            flash[:notice] = "Shout created successfully!"
            redirect_back fallback_location: root_path
        else
            flash[:alert] = "Content can't be blank"
            redirect_back fallback_location: root_path
        end
  end

  private

    def shout_params
        params.require(:art).permit(:title, :color1, :color2, :color3, :color4, :color5, :color6,:maker, :year, :img_url, :API_id, :user_id)
    end

end


