class Sesh < ApplicationRecord
  belongs_to :bookmark

  validates :difficulty, presence: true
end
