class PlacesRoom < ApplicationRecord
  belongs_to :room
  belongs_to :place
end
