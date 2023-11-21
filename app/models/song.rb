class Song < ApplicationRecord
  belongs_to :artist

  validates :title, presence: true
  validates :api_id, presence: true
end
