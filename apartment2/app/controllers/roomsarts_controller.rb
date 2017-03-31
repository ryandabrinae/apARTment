class RoomsartsController < ApplicationController
    before_action :authenticate_user!
    def show
        @roomsart = RoomsArt.find(params[:id])
    end

    def create
        @roomsart = RoomsArt.new
        if(params[:rooms_art][:art])
            @roomsart.art_id = params[:rooms_art][:art]
            @roomsart.room_id = params[:room]
        else
           @roomsart.art_id = params[:art]
           @roomsart.room_id = params[:rooms_art][:room]
        end

        if @roomsart.save
            redirect_to @roomsart
        else
            redirect_back fallback_location: root_path
        end
    end

    private
    def set_params
    end
end
