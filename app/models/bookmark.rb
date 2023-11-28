class Bookmark < ApplicationRecord
  belongs_to :playlist
  belongs_to :song
  has_one :user, through: :playlist
  has_many :seshes, dependent: :destroy

  validates :playlist, uniqueness: { scope: :song }

  def user
    playlist.user
  end

  def have_sung_before?
    number_times_sang > 0
  end

  def number_times_sang
    sang_songs.count
  end

  def sang_songs
    song.seshes.where(bookmark: user.bookmarks)
  end

  def avg_song_difficulty
    return '-' if sang_songs.empty?

    sang_songs.pluck(:difficulty).sum.fdiv(sang_songs.count).round(2)
  end

  def avg_hype_number
    return '-' if sang_songs.empty?

    sang_songs.pluck(:hype_number).sum.fdiv(sang_songs.count).round(2)
  end

  def avg_key
    return '-' if sang_songs.empty?

    sang_songs.pluck(:key).sum.fdiv(sang_songs.count).round
  end
end
