# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  address    :string(255)
#  created_at :datetime
#  updated_at :datetime
#  latitude   :float
#  longitude  :float
#  user_id    :integer
#

class Location < ActiveRecord::Base
	belongs_to :user
		geocoded_by :address
		after_validation :geocode, :if => :address_changed?
end
