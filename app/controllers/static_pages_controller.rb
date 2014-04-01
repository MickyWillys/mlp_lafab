class StaticPagesController < ApplicationController
  def home
  end

  def landing
  	@skill = Skill.new
  end
end
