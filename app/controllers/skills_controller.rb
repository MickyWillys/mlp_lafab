class SkillsController < ApplicationController
	
	def new
		# Attribution de l'user_id à la skill
		# Nb ON DOIT ETRE CONNECTE 
		@skill = Skill.new
	end


	def create
		@skill = Skill.create(skill_params)
		if @skill.save
			flash[:success] = "compétences enregistrées!"
			redirect_to new_user_registration_path
		else
			render 'static_pages/home'
		end
	end

	private
	def skill_params
		params.require(:skill).permit(:user_id, :title, :tag_list)
	end

end
