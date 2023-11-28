class Song < ApplicationRecord
  belongs_to :artist
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :playlists, through: :bookmarks
  has_many :seshes, through: :bookmarks

  validates :title, presence: true
  validates :api_id, presence: true
end
