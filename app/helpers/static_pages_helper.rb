module StaticPagesHelper

	def team_results(team)
		@team = Team.find_by_id(team)
		@selections = @team.selections
		team_selections(@selections)
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

  	def team_selections(selections)
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

	def round_score_to_par(score)
		if score == 0
			0
		else
		score - @par
		end
	end

	def total_score_to_par(score)
		if @rounds_completed == 0
			0
		else
		@total_for_rounds_completed = @par * @rounds_completed
		score - @total_for_rounds_completed
		end
	end
end
