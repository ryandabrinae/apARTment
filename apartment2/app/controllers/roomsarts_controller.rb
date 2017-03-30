class RoomsartsController < ApplicationController
    def show
        @roomsart = RoomsArt.find(params[:id])
    end

    def create
        @roomsart = RoomsArt.new
        @roomsart.art_id = params[:rooms_art][:art]
        room_id = params[:room]
        @roomsart.room_id = room_id

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