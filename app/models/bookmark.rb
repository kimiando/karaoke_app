class Bookmark < ApplicationRecord
  belongs_to :playlist
  belongs_to :song

  validates :playlist, uniqueness: { scope: :song }
end
