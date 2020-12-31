class LikesController < ApplicationController
    before_action :find_trail
    before_action :find_like, only: [:destroy]

    def create
        if already_liked?
            flash[:notice] = "Are you serious? You can't like more than once"
        else
        @like = Like.create(trail_id: like_params[:trail_id], user_id: session[:id])
        end
        redirect_to trail_path(like_params[:trail_id])
    end

    def destroy
        if !(already_liked?)
            flash[:notice] = "WoW your actually tried unliking more then once"
        else
            @like.destroy
        end
        redirect_to trail_path(like_params[:trail_id])
    end

    private
    def find_trail
        @trail = Trail.find(like_params[:trail_id])
    end

    def find_like
        @like = Like.find(params[:id])
    end

    def like_params
        params.require(:like).permit(:trail_id, :user_id)
    end

    def already_liked?
        Like.where(user_id: session[:id], trail_id:
        like_params[:trail_id]).exists?
    end
end
