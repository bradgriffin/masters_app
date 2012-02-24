class GolfersController < ApplicationController
  def new
  	@golfer = Golfer.new
	end

  def create
  	@golfer = Golfer.new(params[:golfer])
  	if @golfer.save
  		flash[:success] = "Golfer Created"
      redirect_to new_golfer_path
    else
      flash[:error] = "You suck"
      redirect_to new_golfer_path
    end
  end

  def show
    @title = "Add Golfer"
  	@golfers = Golfer.all
  end
end
