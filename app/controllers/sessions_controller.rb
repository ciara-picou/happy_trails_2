class SessionsController < ApplicationController
  def sign_in
    @user = User.new
  end

  def create
    # authenticate entered password against user's stored password
    @user = User.find_by(email: user_params[:email])
    if @user && @user.authenticate(user_params[:password])
      session[:id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = "Incorrect Email or Password"
      redirect_to "/sign_in"
    end
  end

  def destroy
    session.clear
    redirect_to "/sign_in"
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
