class Selection < ActiveRecord::Base
	belongs_to :Team
	belongs_to :Golfer
	validates_presence_of :team_id, :golfer_id, :group_id
	validates_uniqueness_of :group_id, :scope => [:team_id]
end
