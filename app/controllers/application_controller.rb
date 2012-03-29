class ApplicationController < ActionController::Base
before_filter :set_users
before_filter :set_golfers
before_filter :set_teams
before_filter :set_pools

helper :all # include all helpers, all the time in the views

	def set_users
		@users = User.all
	end

	def set_golfers
		@golfers = Golfer.all
	end

	def set_teams
		@teams = Team.all
	end

	def set_pools
		@pools = Pool.all
	end

protect_from_forgery
  def after_sign_in_path_for(resource)
        stored_location_for(resource) || resource
  end
end
