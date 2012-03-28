class Membership < ActiveRecord::Base
	belongs_to :Pool
	belongs_to :User

	validates_presence_of :pool_id, :user_id
	validates_uniqueness_of :pool_id, :scope => :user_id
end
