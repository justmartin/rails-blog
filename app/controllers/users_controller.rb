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

  def account
    #current_user from application helper/controller
  end

  def edit
    #current_user from application helper/controller
  end

  def update 
    current_user.update_attributes(first_name: params[:first_name],
                                   last_name: params[:last_name],
                                   email: params[:email],
                                   password: params[:password])
    redirect_to "/my-account"
  end

  def destroy
    current_user.destroy
    flash[:alert] = "Account Deleted. Bad move."
    redirect_to "/"
  end

end
