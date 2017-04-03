class ArtsRoom < ApplicationRecord
  belongs_to :room
  belongs_to :art
  has_one :furniture, :dependent => :destroy
end