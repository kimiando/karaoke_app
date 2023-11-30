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
    song = Song.find_by(title: 'Snooze', artist: Artist.find_by(name: 'SZA'))
    songs << song if song
    song = Song.find_by(title: 'Baby', artist: Artist.find_by(name: 'Justin Bieber'))
    songs << song if song
    song = Song.find_by(title: 'Wonderwall', artist: Artist.find_by(name: 'Oasis'))
    songs << song if song
    song = Song.find_by(title: 'Toxic', artist: Artist.find_by(name: 'Britney Spears'))
    songs << song if song
    song = Song.find_by(title: 'Iris', artist: Artist.find_by(name: 'Goo Goo Dolls'))
    songs << song if song
    song = Song.find_by(title: 'TiK ToK', artist: Artist.find_by(name: 'Kesha'))
    songs << song if song
    song = Song.find_by(title: 'NO', artist: Artist.find_by(name: 'Meghan Trainor'))
    songs << song if song
    songs
  end
end
