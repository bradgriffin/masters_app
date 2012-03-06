class Selection < ActiveRecord::Base
	belongs_to :User
	belongs_to :Golfer

	validates_presence_of :user_id, :golfer_id, :group_id
	validates_uniqueness_of :group_id, :scope => [:user_id]
end
