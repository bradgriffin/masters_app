module ApplicationHelper

  # Return a title on a per-page basis.
  	def title
   	 base_title = "Masters Challenge"
    	if @title.nil?
      		base_title
    	else
      	"#{base_title} | #{@title}"
    	end
  	end

  	def correct_user?(user)
  		user == current_user
  	end
end
