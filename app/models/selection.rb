class Selection < ActiveRecord::Base
	belongs_to :Users
	belongs_to :Golfers

	validates_presence_of :user_id, :golfer_id
end
