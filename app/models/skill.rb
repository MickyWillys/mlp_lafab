class Skill < ActiveRecord::Base
	has_one :user
	acts_as_taggable
end
