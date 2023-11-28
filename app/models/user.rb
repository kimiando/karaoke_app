class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :playlists, dependent: :destroy
  has_many :bookmarks, through: :playlists
  has_many :seshes, through: :bookmarks
  has_many :songs, through: :bookmarks

  def unique_bookmarks
    bookmarks.order(created_at: :desc).limit(30).uniq { |b| b.song_id }
  end
end
