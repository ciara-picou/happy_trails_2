class LikesController < ApplicationController
    before_action :find_trail
    def create
        @trail.likes.create(user_id: current_user.id)
        redirect_to trail_path(@trail)
    end

    private

    def find_trail
        @trail = Trail.find(params[:trail_id])
    end
end
