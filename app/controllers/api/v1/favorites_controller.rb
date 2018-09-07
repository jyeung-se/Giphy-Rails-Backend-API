class Api::V1::FavoritesController < ApplicationController
  before_action :find_favorite, only: [:show, :edit, :update, :destroy]

  def index
    @favorite = Favorite.all
    render json: @favorite
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
  end

  def show
    #code
  end

  def edit
    #code
  end

  def update
    @favorite.update(favorite_params)
  end

  def destroy
    @favorite.destroy
  end

  private

  def favorite_params
    params.require(:favorite).permit(:caption, :user_id, :gif_id)
  end

  def find_favorite
    @favorite = Favorite.find(params[:id])
  end

end
