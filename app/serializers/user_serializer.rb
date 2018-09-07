class UserSerializer < ActiveModel::Serializer
  has_many :favorites
  has_many :gifs through: :favorites

  attributes :username, :password
end
