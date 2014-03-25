class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :skills
  has_one :location

  attr_accessible :status

  private

  	def user_params
  		require(:user).permit(:status)
  	end

end
