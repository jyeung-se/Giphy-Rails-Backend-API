class Api::V1::UsersController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.new(user_params)
  end


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def find_user
    @user = User.find(params[:id])
  end

end
