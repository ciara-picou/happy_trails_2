class HikeSignUpsController < ApplicationController
  def create
    @hike_sign_up = HikeSignUp.create(hike_id: hike_sign_up_params[:hike_id], user_id: session[:id])
    redirect_to hike_path(@hike_sign_up.hike)
  end

  def show
    @hike_sign_up = HikeSignUp.find(params[:id])
  end

  private

  def hike_sign_up_params
    params.require(:hike_sign_up).permit(:user_id, :hike_id)
  end
end
