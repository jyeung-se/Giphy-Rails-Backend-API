class Api::V1::GifsController < ApplicationController

  before_action :find_gif, only: [:show, :edit, :update, :destroy]

  def index
    @gifs = Gif.all
    render json: @gifs
  end

  def create
    @gif = Gif.new(gif_params)
  end

  def get_trending
    url = 'https://api.giphy.com/v1/gifs/trending?api_key=' + ENV["FINGERLICKINGOOD"] + '&limit=25'
    request = RestClient.get(url)
    response = JSON.parse(request)
    render json: response
  end

  def get_more_trending
    url = 'https://api.giphy.com/v1/gifs/trending?api_key=' + ENV["FINGERLICKINGOOD"] + '&limit=50'
    request = RestClient.get(url)
    response = JSON.parse(request)
    render json: response
  end

  private

  def gif_params
    params.require(:gif).permit(:title, :img_url)
  end

  def find_gif
    @gif = Gif.find(params[:id])
  end

end
