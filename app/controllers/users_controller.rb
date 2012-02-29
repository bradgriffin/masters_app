class UsersController < ApplicationController
	before_filter :authenticate_user!
	
  def new
  	@title = "Sign up"
  end

  def show
  	@user = User.find(params[:id])
  	@title = @user.name
    @selections = @user.selections.find(:all)
    8.times do
      @selection = @user.selections.build(params[:selection])
    end
    @golfers = Golfer.all
    @group_1 = Golfer.where(:group_id => "1")
    @group_2 = Golfer.where(:group_id => "2")
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
