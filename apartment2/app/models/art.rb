class Art < ApplicationRecord
    validates :title, presence: true, message: "Title cannot be empty"
    validates :user, presence: true, message: "Has to be associated with user"
    belongs_to :user
    has_and_belongs_to_many :rooms
end
