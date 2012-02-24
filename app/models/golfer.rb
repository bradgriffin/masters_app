class Golfer < ActiveRecord::Base
	has_many :selections
	has_many :users, :through => :selections

	attr_accessible :name, :status, :group

	validates_presence_of :name, :status, :group
    validates_uniqueness_of :name
end
