# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Skill < ActiveRecord::Base
	belongs_to :user
	acts_as_taggable

end
