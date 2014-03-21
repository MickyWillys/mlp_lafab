class SkillsController < ApplicationController
	
	def new
		# Attribution de l'user_id à la skill
		# Nb ON DOIT ETRE CONNECTE
		@user= current_user
		@skill= Skill.new
		@skill.update_attributes(user_id: @user.id)
	end


	def update
		@skill = Skill.create(skill_params)
		if @skill.save
			flash[:success] = "skills sauvegardées!"
			redirect_to root_url
		else
			render 'static_pages/home'
		end
	end

	private
	def skill_params
		params.require(:skill).permit(:user_id, :title, :tag_list)
	end

end
