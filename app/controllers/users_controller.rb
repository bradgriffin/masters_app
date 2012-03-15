class UsersController < ApplicationController
	before_filter :authenticate_user!
	
  def new
  	@title = "Sign up"
  end

  def show
  	@user = User.find(params[:id])
  	@title = @user.name
    @selections = @user.selections.find(:all, :order => "group_id asc")
    @groups = (1..8).entries
    @groups_available = []
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    @title = @user.name
    @selections = @user.selections.find(:all)
    @group_1 = Golfer.where(:group_id => "1")
    @group_2 = Golfer.where(:group_id => "2")
    @group_3 = Golfer.where(:group_id => "3")
    @group_4 = Golfer.where(:group_id => "4")
    @group_5 = Golfer.where(:group_id => "5")
    @group_6 = Golfer.where(:group_id => "6")
    @group_7 = Golfer.where(:group_id => "7")
    @group_8 = Golfer.where(:group_id => "8")
  end
end
