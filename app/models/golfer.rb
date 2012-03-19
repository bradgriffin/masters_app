class Golfer < ActiveRecord::Base
	has_many :selections
	has_many :users, :through => :selections
	has_one :result

	attr_accessible :name, :status, :group_id

	validates_presence_of :name, :status, :group_id
    validates_uniqueness_of :name
    validates_numericality_of :group_id
end
