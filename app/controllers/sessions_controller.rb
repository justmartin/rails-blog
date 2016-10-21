class SessionsController < ApplicationController

  def create
    @user = User.where(params[:id]).first
    if @user && @user.password == params[:password]
      session[:user_id] = @user.id
      redirect_to "/home"
    else
      flash[:alert] = "Sorry, could not log you in. If you don't have an account, click Sign Up"
      redirect_to "/"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to "/"
  end

end
