class GifSerializer < ActiveModel::Serializer
  # has_many :favorites
  # has_many :users, through: :favorites

  attributes :title, :img_url
end



# class PizzaSerializer < ActiveModel::Serializer
#   # has_many :favorites
#   # has_many :users, through: :favorites
#   has_many :ingredients
#   attributes :name
# end
