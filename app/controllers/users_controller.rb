class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @arts = Art.where(user_id: current_user.id)
    @rooms = Room.user_rooms(current_user.id)
  end

end


