class UsersController < ApplicationController
  def show
    if current_user
      @user = User.find(current_user.id)
      @otherUsers = User.all_except(@user)
    else
      redirect_to root_path
    end
  end
end
