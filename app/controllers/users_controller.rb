class UsersController < ApplicationController
	before_filter :authenticate_user!
	
  def new
  	@title = "Sign up"
  end

  def show
    @current_time = Time.new
  	@user = User.find(params[:id])
  	@title = @user.name
    @teams = @user.teams.find(:all)
    @pool = Pool.new
    # @selections = @user.selections.find(:all, :order => "group_id asc")
    @groups = (1..8).entries
    @groups_available = []
    @result_1 = 0
    @result_2 = 0
    @result_3 = 0
    @result_4 = 0
    @total = []
    @totals = []
    @results_1 = []
    @results_2 = []
    @results_3 = []
    @results_4 = []
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
