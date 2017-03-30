class Furniture < ApplicationRecord
  validates :type_of_furniture, presence: true
  validates :room, presence: true
  belongs_to :room
end
