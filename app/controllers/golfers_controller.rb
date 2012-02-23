class GolfersController < ApplicationController
  def new
  	@golfer = Golfer.new
	end

  def create
  	@golfer = Golfer.new(params[:golfer])
  	if @golfer.save
  		redirect_to root_path
  	else
  	render 'new'
  end
  end

  def show
  	@golfers = Golfer.all
  end
end
