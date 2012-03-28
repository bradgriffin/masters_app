class Team < ActiveRecord::Base
	belongs_to :User
	belongs_to :Pool
	has_many :selections, :dependent => :destroy
  	has_many :golfers, :through => :selections, :source => :Team
  	accepts_nested_attributes_for :selections

  	attr_accessible :name, :user_id, :pool_id
end
