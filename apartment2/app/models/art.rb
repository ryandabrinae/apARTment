class Art < ApplicationRecord
    validates :title, presence: true
    validates :user, presence: true

    belongs_to :user
    has_and_belongs_to_many :rooms

    def madeBy
        "#{title} by #{maker} (#{year})"
    end
end
