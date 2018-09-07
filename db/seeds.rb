# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'
require 'json'

def get_gif_from_api
  url = 'https://api.giphy.com/v1/gifs/trending?api_key=AqKfwVr9s1p2Dfo1k95y3w5N8P96eGoX&limit=1000'
  response = RestClient.get(url)
  JSON.parse(response)
end


def save_gif_data(hash_array)
	gifs = []
	hash_array.each do |hash|
		each_gif = []
		each_gif << hash["title"]
    each_gif << hash["images"]["downsized_medium"]["url"]
		gifs << each_gif
	end
	gifs
end


def gifs_info
	gif_hash_array = get_gif_from_api["data"]
	save_gif_data(gif_hash_array)
end


gifs_info.each do |each_gif|
  # Gif.create(title: each_gif[0], img_url: each_gif[1])
	Gif.create(title: each_gif[0], img_url: each_gif[1])
end


User.all.each do |each_user|
	Gif.all.each do |each_gif|
		Favorite.create(user_id: each_user.id, gif_id: each_gif.id, caption: '')
	end
end
