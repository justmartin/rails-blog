class UsersController < ApplicationController

  def index
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = "Thanks for singing up. You can now log in."
      redirect_to "/"
    else
      flash[:notice] = "Thanks for singing up. You can now log in."
      redirect_to "/sign-up"
    end
  end

  def destroy
  end

end
