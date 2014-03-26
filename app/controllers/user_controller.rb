class UserController < ApplicationController

  def edit 

  end


  private
  
  def set_user

  end


  def user_params
    require(:user).permit(:email, :password,:status )
  end

end
