class Playlist < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
end
