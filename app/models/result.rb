class Result < ActiveRecord::Base
	belongs_to :Golfer

	validates_uniqueness_of :golfer_id
end
