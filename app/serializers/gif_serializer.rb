class GifSerializer < ActiveModel::Serializer
  has_many :favorites
  has_many :users, through: :favorites

  attributes :title, :img_url
end
