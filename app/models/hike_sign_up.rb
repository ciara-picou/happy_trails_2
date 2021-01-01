class HikeSignUp < ApplicationRecord
  belongs_to :user
  belongs_to :hike

  validates_uniqueness_of :user_id, :scope => :hike_id
end
