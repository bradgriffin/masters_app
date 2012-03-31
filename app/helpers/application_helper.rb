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

    def reset_vars()
      @results_1 = []
      @results_2 = []
      @results_3 = []
      @results_4 = []
      @total = []
      @result_1 = 0
      @result_2 = 0
      @result_3 = 0
      @result_4 = 0
      @teams = nil
    end

    def before_locktime?(time)
      @lock_time = Time.new(2012,4,5,8,0,0,"-05:00")
      time < @lock_time
    end
end
