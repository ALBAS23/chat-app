class UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(date)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def date
    params.require(:user).permit(:name, :email)
  end
end
