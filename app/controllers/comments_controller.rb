class CommentsController < ApplicationController
  def create
    @comment = Comment.create(trail_id: comment_params[:trail_id], user_id: session[:id], content: comment_params[:content])
    redirect_to trail_path(@comment.trail)
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

  def comment_params
    params.require(:comment).permit(:trail_id, :user_id, :content)
  end
end
