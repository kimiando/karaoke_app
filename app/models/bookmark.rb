class Bookmark < ApplicationRecord
  belongs_to :playlist
  belongs_to :song
  has_many :seshes, dependent: :destroy
  has_one :user, through: :playlist

  validates :playlist, uniqueness: { scope: :song }
end
