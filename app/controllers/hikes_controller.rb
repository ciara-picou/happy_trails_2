class HikesController < ApplicationController
  def new
    @hike = Hike.new
  end

  def create
    @hike = Hike.create(hike_params)
  end

  def show
    @hike = Hike.find(params[:id])
    @date = @hike.hike_date.strftime('%m/%d/%Y')
    @sign_ups = @hike.hike_sign_ups
  end

  private
  
  def hike_params
    params.require(:hike).permit(:trail_id,:hike_date)
  end
end
