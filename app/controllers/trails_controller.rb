class TrailsController < ApplicationController
  def index
    @trails = Trail.all
  end

  def show
    @trail = Trail.find(params[:id])
    @hike = Hike.new
    @hikes = @trail.hikes
  end

end