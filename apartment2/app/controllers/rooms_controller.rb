class RoomsController < ApplicationController
    def index
        @rooms = Room.user_rooms(current_user.id)
    end

    def new
        @room = Room.new
    end

    def create
        @room = Room.new(room_params)
        @room.type_of_room = params[:type_of_room]

        if @room.save
            redirect_to @room
        else
            puts @room
            redirect_to :back
        end


    end

    def show
        @room = Room.find(params[:id])
        # @art = Roomsart.all
        @addToRoom = ArtsRoom.new
    end

    private
    def room_params
        params.require(:room).permit(:name, :status, :user_id)
    end
end
