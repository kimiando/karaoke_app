class Bookmark < ApplicationRecord
  belongs_to :playlist
  belongs_to :song
  has_one :user, through: :playlist

  validates :playlist, uniqueness: { scope: :song }
end
