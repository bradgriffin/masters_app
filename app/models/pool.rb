class Pool < ActiveRecord::Base
	belongs_to :User
	has_many :Memberships
	has_many :Teams

	attr_accessible :name, :description, :password, :password_confirmation, :user_id
	has_secure_password

	validates_presence_of :name, :user_id
	validates_uniqueness_of :name
end
