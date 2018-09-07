class FavoriteSerializer < ActiveModel::Serializer
  # belongs_to :user
  # belongs_to :gif

  attributes :user_id, :gif_id, :caption
end
