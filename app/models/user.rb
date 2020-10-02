class User < ApplicationRecord
    has_secure_password
    has_many :likes
    has_many :trails, through: :likes
    has_many :hikes
    has_many :trails, through: :hikes
    has_many :trail_lists
    has_many :trails, through: :trail_lists
end
