class TrailListsController < ApplicationController
  before_action :authenticated?, only: [:index, :show]
  
    #trail_list.create(trail_id: (@trail.id).id, user_id: @user.id)
    def index
        @user = User.find(session[:id])
        @trail_lists = @user.trail_lists
    end

   def new
    @trails = Trail.all
    @user = User.find(params[:id])
    @trail_list = TrailList.find(params[:id])
   end

  def create
    if already_liked?
      flash[:notice] = "you cant add that to your list more than once you DINGUS"
    else
        @list = TrailList.create(trail_id: list_params[:trail_id],user_id: session[:id])
    end
    redirect_to trail_lists_path
  end

    def show
        @trail_list = TrailList.find(params[:id])
    end

    def edit
        @trail_list = TrailList.find(params[:id])
        @trails = Trail.all
    end


    # def update
    #     @trail_list = TrailList.find(params[:id])
    #     @trail.update(trail_list_params)
    #     redirect_to trail_lists_path
    # end

    def destroy
        @trail_list = TrailList.find(params[:id])
        @trail_list.destroy
        redirect_to trail_lists_path
    end

    private

    # def find_trail
    #   @trail = Trail.find(list_params[:trail_id])
    # end

    def list_params
     
      params.require(:trail_lists).permit(:trail_id, :user_id)
    end
#not convention better to validate uniqueness
    def already_liked?
      TrailList.where(user_id: session[:id], trail_id:
      list_params[:trail_id]).exists?
    end

    def authenticated?
      # check our session hash if user exists
      if session[:id] != nil 
          @user = User.find(session[:id])
      # if no user, take them to sign in/sign up
      else
          redirect_to '/sign_in'
      end
  end
end


