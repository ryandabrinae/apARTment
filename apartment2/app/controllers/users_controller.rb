class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @arts = Art.all
    @rooms = Room.user_rooms(current_user.id)
  end

end


