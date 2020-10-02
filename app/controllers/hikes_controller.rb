class HikesController < ApplicationController
  def new
    @hike = Hike.new
  end

  def create
    params[:hike][:user_id] = session[:id].to_s
    #byebug
    @hike = Hike.create(hike_params)
    redirect_to hike_path(@hike)
  end
  def show
    #Sbyebug
    @hike = Hike.find(params[:id])
  end

  private
  
  def hike_params
    #byebug
    params.require(:hike).permit(:trail_id,:hike_date,:user_id)
  end
end
