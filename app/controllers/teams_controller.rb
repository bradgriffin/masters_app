class TeamsController < ApplicationController
  def new
  	@title = "Select Team"
    @user = current_user.id
    @team = Team.new
    @memberships = current_user.memberships.find(:all)
    @pools_available = []
  end

  def create
  	@team = current_user.teams.build(params[:teams])
    @team.save

    if @team.save
      flash[:success] = "Team created!"
      redirect_to current_user
    else
      flash[:error] = "Try again"
      redirect_to current_user
    end
  end

  def show
    @team = Team.find(params[:id])
    @user = User.find(@team.user_id)
    @current_time = Time.new
    @groups = (1..8).entries
    @groups_available = []
    @result_1 = 0
    @result_2 = 0
    @result_3 = 0
    @result_4 = 0
    @total = []
    @totals = []
  end
end
