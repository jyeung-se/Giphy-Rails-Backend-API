class User < ApplicationRecord
  has_many :favorites
  has_many :gifs, through: :favorites
end
