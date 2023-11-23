class Place < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :price_level, presence: true
  validates :room_option, presence: true
  validates :langitude, presence: true
  validates :longitude, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
