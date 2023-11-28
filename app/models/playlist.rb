class Playlist < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :songs, through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true
end
