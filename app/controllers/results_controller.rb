class ResultsController < ApplicationController

	def new
		@result = Result.new
	end

	def create
  	@result = Result.new(params[:result])
  	if @result.save
  		flash[:success] = "Result Recorded"
      redirect_to new_result_path
    else
      flash[:error] = "You suck"
      redirect_to new_result_path
    end
  end

  def show
  end

  def edit_multiple
    @user = current_user
    @selections = current_user.selections.find(params[:selection_id])
  end

  def update_multiple
    @round_1 = params[:golfers][:round_1]
    @round_2 = params[:golfers][:round_2]
    @round_3 = params[:golfers][:round_3]
    @round_4 = params[:golfers][:round_4]
    @results = params[:golfers][:result_id]
    hash1 = {}
    hash2 = {}
    hash3 = {}
    hash4 = {}
    @round_1.each_with_index {|k,i|hash1[k] = @results[i]}
    @round_2.each_with_index {|k,i|hash2[k] = @results[i]}
    @round_3.each_with_index {|k,i|hash3[k] = @results[i]}
    @round_4.each_with_index {|k,i|hash4[k] = @results[i]}

    hash1.each do |round_1,result|
      @result = Result.find(result)
      @result.update_attributes("round_1" => round_1)
    end

    hash2.each do |round_2,result|
      @result = Result.find(result)
      @result.update_attributes("round_2" => round_2)
    end

    hash3.each do |round_3,result|
      @result = Result.find(result)
      @result.update_attributes("round_3" => round_3)
    end

    hash4.each do |round_4,result|
      @result = Result.find(result)
      @result.update_attributes("round_4" => round_4)
    end

    flash[:notice] = "Updated results!"
    redirect_to current_user
  end
end