class Golfer < ActiveRecord::Base
	has_many :selections
	has_many :teams, :through => :selections
	has_one :result

	attr_accessible :name, :status, :group_id, :country_name, :first_masters, :past_champion

	validates_presence_of :name, :status, :group_id, :country_name, :first_masters, :past_champion
    validates_uniqueness_of :name
    validates_numericality_of :group_id
end
