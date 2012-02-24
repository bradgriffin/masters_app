class Golfer < ActiveRecord::Base
	has_many :selections
	has_many :users, :through => :selections

	attr_accessible :name, :status

	validates_presence_of :name, :status
    validates_uniqueness_of :name
end
