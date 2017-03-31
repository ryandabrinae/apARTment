class ArtsRoom < ApplicationRecord
  belongs_to :room
  belongs_to :art
  has_many :furnitures
end