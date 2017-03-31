class UsersController < ApplicationController

  def index
    @arts = Art.all
    @rooms = Room.user_rooms(current_user.id)
  end

end


