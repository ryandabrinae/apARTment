class Furniture < ApplicationRecord
  validates :type, presence: true
  validates :room, presence: true
  belongs_to :room
end
