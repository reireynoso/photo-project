class GenreSerializer < ActiveModel::Serializer
  attributes :id, :name, :image
  has_many :photos
  # has_many :comments, through: :photos
end

