class Place < ApplicationRecord
  has_one_attached :photo
  enum price_level: ["¥", "¥¥", "¥¥¥"]
  validates :name, presence: true
  validates :address, presence: true, uniqueness: true
  validates :price_level, presence: true
  validates :room_option, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
