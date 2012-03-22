class ResultsController < ApplicationController
  before_filter :authenticate_user!

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
    @results.each_with_index {|k,i|hash1[k] = @round_1[i]}
    @results.each_with_index {|k,i|hash2[k] = @round_2[i]}
    @results.each_with_index {|k,i|hash3[k] = @round_3[i]}
    @results.each_with_index {|k,i|hash4[k] = @round_4[i]}

    hash1.each do |result_id,score|
      @result = Result.find(result_id)
      @result.update_attributes("round_1" => score)
    end

    hash2.each do |result_id,score|
      @result = Result.find(result_id)
      @result.update_attributes("round_2" => score)
    end

    hash3.each do |result_id,score|
      @result = Result.find(result_id)
      @result.update_attributes("round_3" => score)
    end

    hash4.each do |result_id,score|
      @result = Result.find(result_id)
      @result.update_attributes("round_4" => score)
    end

    flash[:notice] = "Updated results!"
    redirect_to current_user
  end
end