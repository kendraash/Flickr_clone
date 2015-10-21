class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find(params[:id])

    if @user.save
      sign_in current_user
      flash[:notice] = "Logged in successfully!"
      redirect_to home_path
    else
      flash[:notice] = "Something went wrong"
      render :new

    end
  end

  def destroy
    sign_out current_user
    redirect_to "/"
  end
end
