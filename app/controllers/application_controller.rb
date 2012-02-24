class ApplicationController < ActionController::Base
before_filter :set_users
before_filter :set_golfers

	def set_users
		@users = User.all
	end

	def set_golfers
		@golfers = Golfer.all
	end

protect_from_forgery
  def after_sign_in_path_for(resource)
        stored_location_for(resource) || resource
  end
end
