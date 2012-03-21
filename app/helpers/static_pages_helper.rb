module StaticPagesHelper

	def user_results(user)
		@user = User.find_by_id(user)
		@selections = @user.selections
		user_selections(@selections)
		@total = [@results_1.sum,@results_2.sum,@results_3.sum,@results_4.sum]
	end

	def golfer_results(golfer)
		@golfer = Golfer.find_by_id(golfer)
		if @golfer.result
				@result_1 = @golfer.result.round_1
				@result_2 = @golfer.result.round_2
				@result_3 = @golfer.result.round_3
				@result_4 = @golfer.result.round_4
				@results_1 << @result_1
				@results_2 << @result_2
				@results_3 << @result_3
				@results_4 << @result_4
			end
		@total = [@results_1.sum,@results_2.sum,@results_3.sum,@results_4.sum]
	end

  	def user_selections(selections)
  		for selection in selections 
			@golfer = Golfer.find_by_id(selection.golfer_id)
			if @golfer.result
				@result_1 = @golfer.result.round_1
				@result_2 = @golfer.result.round_2
				@result_3 = @golfer.result.round_3
				@result_4 = @golfer.result.round_4
				@results_1 << @result_1
				@results_2 << @result_2
				@results_3 << @result_3
				@results_4 << @result_4
			end
		end
	end
end
