class RoomsController < ApplicationController
    before_action :authenticate_user!
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

    def edit 
        @room = Room.find(params[:id])
    end

    def update
        @room = Room.find(params[:id])
        @room.name = params[:room][:name]
        @room.type_of_room = params[:type_of_room]
        @room.status = params[:status]

        if @room.save
            redirect_to @room
        else
            redirect_to :back
        end
    end

    def destroy
        @room = Room.find(params[:id])
        
        if @room.destroy
            redirect_to rooms_path
        else 
            redirect_to @room
        end
    end

    private
    def room_params
        params.require(:room).permit(:name, :status, :user_id)
    end
end
