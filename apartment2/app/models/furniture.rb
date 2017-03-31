class Furniture < ApplicationRecord
  validates :type_of_furniture, presence: true
  validates_uniqueness_of :type_of_furniture, scope: :arts_room_id
  belongs_to :arts_room
end
