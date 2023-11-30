class Sesh < ApplicationRecord
  belongs_to :bookmark

  validates :difficulty, presence: true
  # validates :key, presence: true
  validates :hype_number, presence: true
end
