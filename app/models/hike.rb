class Hike < ApplicationRecord
  has_many :hike_sign_ups
  has_many :users, through: :hike_sign_ups
  belongs_to :trail
end
