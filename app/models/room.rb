class Room < ApplicationRecord
  validates :type_of_room, presence: true
  validates :name, presence: true
  validates :user, presence: true
  validates_uniqueness_of :name, scope: :user_id
  validates :status, presence: true
  
  belongs_to :user
  has_and_belongs_to_many :arts
  has_and_belongs_to_many :places
  has_many :arts_rooms, :dependent => :destroy

  scope :user_rooms, -> (id){ where(user_id: id).order(created_at: :desc)}
end
