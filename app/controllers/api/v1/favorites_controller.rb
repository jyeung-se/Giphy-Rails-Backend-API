class Api::V1::FavoritesController < ApplicationController
  before_action :find_favorite, only: [:show, :edit, :update, :destroy]

  def index
    @favorites = Favorite.all
    render json: @favorites
  end

  def create
    @favorite = Favorite.new(favorite_params)
  end


  private

  def favorite_params
    params.require(:favorite).permit(:caption, :user_id, :gif_id)
  end

  def find_favorite
    @favorite = Favorite.find(params[:id])
  end

end
