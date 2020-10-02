class HikesController < ApplicationController
  def new
    @hike = Hike.new
  end

  def create
    @hike = Hike.create(user_id: session[:id],trail_id: hike_params[:trail_id],hike_date: hike_params[:hike_date])
    redirect_to hike_path(@hike)
  end
  def show
    @hike = Hike.find(hike_params[:id])
  end

  private
  
  def hike_params
    params.require(:hike).permit('*')
  end
end
