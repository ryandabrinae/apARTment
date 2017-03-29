class Place < ApplicationRecord
  validates :user, presence: true
  validates :name, presence: true
  validates :status, presence: true
  belongs_to :user
  has_and_belongs_to_many :rooms
end
