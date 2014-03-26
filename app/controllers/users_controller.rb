class UsersController < ApplicationController
  def index
  end

  def new
  end

  def edit
  end

  def update
  end

  private

  def user_params
    require(:user).permit(:email, :password, :status)
  end
end
