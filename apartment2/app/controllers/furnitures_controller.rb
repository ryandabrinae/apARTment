class FurnituressController < ApplicationController
    def index
        @furnitures = Furniture.room_furniture(current_room.id)
    end

    def new
        @furniture = Furniture.new
    end

    def create
        @furniture = Furnitre.new(furniture_params)
        @furniture.type_of_furniture = params[:type_of_furniture]

        if @furniture.save
            redirect_to @furniture
        else
            puts @furniture
            redirect_to :back
        end


    end

    def show
        @furniture = Furniture.find(params[:id])
    end

    private
    def furniture_params
        params.require(:furniture).permit(:color, :created_at, :updated_at, :type_of_furniture, :room_id)
    end
end
