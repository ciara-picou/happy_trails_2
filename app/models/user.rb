class User < ApplicationRecord
    has_many :hikes
    has_many :trails, through: :hikes
    has_many :trail_lists
    has_many :trails, through: :trail_lists
end