class SessionsController < ApplicationController
  def new
    redirect_to user_path(current_user) if current_user
  end

  def create
    @user = User.find_by_name(params[:session][:name])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
