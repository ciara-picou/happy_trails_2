class User < ApplicationRecord
    has_many :likes
    has_many :trails, through: :likes
    # has_many :trail_lists
    # has_many :trails, through: :trail_lists
end
