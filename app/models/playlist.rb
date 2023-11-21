class Playlist < ApplicationRecord
  belongs_to :users
  has_one_attached :photo

  validates :name, presence: true
end
