class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :likes, :image, :owner_name
  has_many :comments
end
