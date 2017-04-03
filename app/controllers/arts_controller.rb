class ArtsController < ApplicationController
# renders all the art on the page
before_action :authenticate_user!

  def index
    @addToRoom = ArtsRoom.new
    @arts = Art.where(user_id: current_user.id)
  end

  def create
    # create a new piece of art
    @art = Art.new(art_params)
    @art.user = current_user
        if @art.save
            redirect_to @art
        else
            redirect_back fallback_location: root_path
        end
  end

  def show
      @art = Art.where(id: params[:id], user_id: current_user.id).first
      @addToRoom = ArtsRoom.new
  end

   def destroy
      @art = Art.find(params[:id])
      @art.destroy
      redirect_to root_path
    end

  private
# what perameters are necessary for creating art
    def art_params
        params.require(:art).permit(:title, :color1, :color2, :color3, :color4, :color5, :color6, :maker, :year, :img_url, :API_id)
    end

end
