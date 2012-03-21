module UsersHelper

	# Returns the Gravatar (http://gravatar.com/) for the given user.
  	def gravatar_for(user)
    	gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    	gravatar_url = "http://gravatar.com/avatar/#{gravatar_id}.png"
    	image_tag(gravatar_url, alt: user.name, class: "gravatar")
  	end

  	def has_selections?
  		current_user.selections.count > 0
	end

	def selection_results(selection)
		if selection.result
            @result_1 = selection.result.round_1
            @result_2 = selection.result.round_2
            @result_3 = selection.result.round_3
            @result_4 = selection.result.round_4
            @total = [selection.result.round_1,selection.result.round_2,selection.result.round_3,selection.result.round_4]
        end
    end
end
