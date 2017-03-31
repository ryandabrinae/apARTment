class FurnituresController < ApplicationController
    def index
        redirect_to :rooms
    end

    def room_specific
        @furnitures = Furniture.room_furniture(params[:room_id])
    end

    def new
        @furniture = Furniture.new
    end

    def create
        @furniture = Furniture.new(furniture_params)

        if @furniture.save
            redirect_to :back
        else
            puts @furniture
            redirect_to :back
        end
    end

    def update
        @furniture = Furniture.find(params[:id])
        if @furniture.update(furniture_params)
            redirect_to :back
        else
            redirect_to :back
        end
    end

    def show
        redirect_to :rooms
    end

    private
    def furniture_params
        params.require(:furniture).permit(:color, :arts_room_id, :type_of_furniture)
    end
end
