class Golfer < ActiveRecord::Base
	attr_accessible :name, :status
	validates_presence_of :name, :status
    validates_uniqueness_of :name
end
