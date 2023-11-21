class Place < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :price_level, presence: true
  validates :room_option, presence: true
  validates :langitude, presence: true
  validates :longitude, presence: true
end
