
class SessionsController < ApplicationController

    def sign_in
        @user = User.new
    end

    def create
        #byebug
        # check User password input vs User password in db 
        # .authenticate
        # find user
        # check if there is a user&& if their password matches
        # THEN store id in session
        @user = User.find_by(email: user_params[:email])
        #byebug
        if @user && @user.authenticate(user_params[:password])
            #byebug
            session[:id] = @user.id
            redirect_to user_path(@user)
        else
            flash[:error] = "Incorrect Email or Password"
            redirect_to '/sign_in'
        end

    end

    def destroy
        session.clear
        redirect_to '/sign_in'
    end

    private 

    def user_params
        params.require(:user).permit(:email, :password)
    end

end
