class Api::V1::GifsController < ApplicationController

  before_action :find_gif, only: [:show, :edit, :update, :destroy]

  def index
    @gifs = Gif.all
    render json: @gifs
  end

  def create
    @gif = Gif.new(gif_params)
  end


  private

  def gif_params
    params.require(:gif).permit(:title, :img_url)
  end

  def find_gif
    @gif = Gif.find(params[:id])
  end

end
