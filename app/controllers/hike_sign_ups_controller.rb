class HikeSignUpsController < ApplicationController
    
    def create
        @hike_sign_up = HikeSignUp.create(hike_sign_up_params)
        redirect_to hike(@hike_sign_up.hike)
      end

      def show
        @hike_sign_up = HikeSignUp.find(params[:id])
      end
    
      private
      
      def hike_sign_up_params
        params.require(:hike_sign_ups).permit(:user_id,:hike_id)
      end
    end
end
