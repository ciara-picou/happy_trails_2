class CommentsController < ApplicationController
    def index
        #is this unnecessary?
        # I need to find a way to only show the comments that belong to that trail
        @comments=Comment.all
    end

    def show
        #is this unnecessary?
        @comment = Comment.find(params[:id])
    end

    def new
        @comment = Comment.new
    end

    def create
       byebug
        @comment = Comment.create(trail_id: comment_params[:trail_id], user_id: session[:id])
        redirect_to "trails/#{comment_params[:trail_id]}"
    end

    def edit 
        @comment = Comment.find(params[:id])
    end

    def update
        comment = Comment.find(params[:id])
        comment.update(comment_params)
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
    end

    private

    def find_trail
        @trail = Trail.find(comment_params[:trail_id])
    end

    def comment_params
        params.require(:comment).permit(:trail_id, :user_id, :content)
    end

end
