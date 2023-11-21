class Song < ApplicationRecord
  belongs_to :artist
  has_one_attached :photo


  validates :title, presence: true
  validates :api_id, presence: true
end
