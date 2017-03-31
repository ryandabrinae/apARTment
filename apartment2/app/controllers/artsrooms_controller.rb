class ArtsroomsController < ApplicationController
    before_action :authenticate_user!
    def show
        @arts_room = ArtsRoom.find(params[:id])
        if @arts_room.furnitures.exists?
            @furnitures = @arts_room.furnitures 

            @furnitures.each do |furniture| 
                if @furnitures.where(type_of_furniture: "couch")
                    @couch = @furnitures.where(type_of_furniture: "couch").first
                elsif @furnitures.where(type_of_furniture: "bed")
                    @bed = @furnitures.where(type_of_furniture: "bed").first
                end
            end

            if @couch && !@bed
                @bed = Furniture.new
                @bed.type_of_furniture = "bed"
            elsif !@couch && @bed
                @couch = Furniture.new
                @couch.type_of_furniture = "couch"
            elsif !@couch && !@bed
                @couch = Furniture.new
                @couch.type_of_furniture = "couch"
                @bed = Furniture.new
                @bed.type_of_furniture = "bed"
            end      
        else 
            @couch = Furniture.new
            @couch.type_of_furniture = "couch"
            @bed = Furniture.new
            @bed.type_of_furniture = "bed" 
        end # Ends if furnitures exist clause
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
