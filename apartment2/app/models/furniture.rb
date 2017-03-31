class Furniture < ApplicationRecord
  validates :type_of_furniture, presence: true
  validates :arts_room, presence: true
  belongs_to :arts_room
end
