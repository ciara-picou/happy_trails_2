class Trail < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :users, through: :likes
    has_many :hikes
    has_many :users, through: :hikes
    has_many :trail_lists
    has_many :users, through: :trail_lists
end
