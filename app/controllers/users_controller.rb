class UsersController < ApplicationController
  def show
    if current_user
      @user = User.find(current_user.id)
      @otherUsers = User.all_except(@user)
    else
      flash[:errors] = "Unauthorized to visit this page"
      redirect_to login_path
    end
  end
end
