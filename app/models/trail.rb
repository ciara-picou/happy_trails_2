class Trail < ApplicationRecord
    has_many :likes
    has_many :users, through: :likes
    # has_many :trail_lists
    # has_many :users, through: :trail_lists
end
