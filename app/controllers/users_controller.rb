class UsersController < ApplicationController
	before_filter :authenticate_user!
	
  def new
  	@title = "Sign up"
  end

  def show
  	@user = User.find(params[:id])
  	@title = @user.name
    @selection = @user.selections.build
    @golfer = Golfer.all
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

end
