class Selection < ActiveRecord::Base
	belongs_to :User
	belongs_to :Golfer

	validates_presence_of :user_id, :golfer_id, :group_id
end
