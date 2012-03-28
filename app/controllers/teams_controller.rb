class TeamsController < ApplicationController
  def new
  	@title = "Select Team"
    @user = current_user.id
    @team = Team.new
    @pools = current_user.pools.find(:all)
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
end
