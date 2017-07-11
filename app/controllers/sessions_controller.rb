class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to user_path(current_user)
    end
  end

  def create
    @user = User.find_by_name(params[:session][:name])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:errors] = "Invalid login credentials."
      redirect_to root_path
    end
  end

  def destroy
    flash[:error] = "Successfully Logged Out!"
    session.clear
    redirect_to root_path
  end
end
