class UsersController < ApplicationController

  def index
    # @user = User.find(params[:id])
    # @arts = @user.arts

    # @arts = @user.arts
  end

  def profile
    # @user = User.find(params[:id])
    # allows for new art
    @art = Art.new
  end

end


