class Photo < ApplicationRecord
    # has_one_attached :image
    # has_many :connects
    belongs_to :genre
    has_many :comments
    # has_many :people, through: :comments

    def self.most_likes
        Photo.all.sort_by(&:likes)
    end
end
