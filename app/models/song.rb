class Song < ApplicationRecord
  belongs_to :artist
  has_one_attached :photo
  has_many :bookmarks, dependent: :destroy
  has_many :playlists, through: :bookmarks
  has_many :seshes, through: :bookmarks

  validates :title, presence: true
  validates :api_id, presence: true
  # change the song here
  def self.favorites
    songs = []
    songs << Song.find_by(title: 'Wonderwall', artist: Artist.find_by(name: 'Oasis'))
    songs << Song.find_by(title: 'Toxic', artist: Artist.find_by(name: 'Britney Spears'))
    songs << Song.find_by(title: 'Iris', artist: Artist.find_by(name: 'Goo Goo Dolls'))
    songs << Song.find_by(title: 'TiK ToK', artist: Artist.find_by(name: 'Kesha'))
    songs << Song.find_by(title: 'NO', artist: Artist.find_by(name: 'Meghan Trainor'))
    songs
  end
end
