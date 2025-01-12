class UsersController < ApplicationController
  def create
    User.create(username: params[:username])
  end

  def index
    @users = User.all
    respond_to do |format|
      format.json { render json: @users }
    end
  end

  private

  def user_params
    params.require(:username)
  end
end
