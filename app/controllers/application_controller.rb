class ApplicationController < ActionController::Base
before_filter :set_users
before_filter :set_golfers

	def set_users
		@users = User.all
	end

	def set_golfers
		@golfers = Golfer.all
	end

	# Return a title on a per-page basis.
  	def title
   	 base_title = "Masters Challenge"
    	if @title.nil?
      		base_title
    	else
      	"#{base_title} | #{@title}"
    	end
  	end

protect_from_forgery
  def after_sign_in_path_for(resource)
        stored_location_for(resource) || resource
  end
end
