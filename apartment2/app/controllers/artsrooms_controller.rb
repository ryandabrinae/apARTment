class ArtsroomsController < ApplicationController
    before_action :authenticate_user!
    def show
        @arts_room = ArtsRoom.find(params[:id])
        if @arts_room.furniture
            @furniture = @arts_room.furniture
        else
            @furniture = Furniture.new
        end
    end

    def create
        @arts_room = ArtsRoom.new
        if(params[:arts_room][:art])
            @arts_room.art_id = params[:arts_room][:art]
            @arts_room.room_id = params[:room]
        else
           @arts_room.art_id = params[:art]
           @arts_room.room_id = params[:arts_room][:room]
        end

        if @arts_room.save
            redirect_to @arts_room
        else
            redirect_back fallback_location: root_path
        end
    end

    private
    def set_params
    end
end
