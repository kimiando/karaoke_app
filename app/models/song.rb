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
    songs << Song.find_by(title: 'Snooze', artist: Artist.find_by(name: 'SZA'))
    songs << Song.find_by(title: 'Baby', artist: Artist.find_by(name: 'Justin Bieber'))
    songs << Song.find_by(title: 'Snooze', artist: Artist.find_by(name: 'SZA'))
    songs << Song.find_by(title: 'Baby', artist: Artist.find_by(name: 'Justin Bieber'))
    songs << Song.find_by(title: 'Snooze', artist: Artist.find_by(name: 'SZA'))
    songs
  end
end
