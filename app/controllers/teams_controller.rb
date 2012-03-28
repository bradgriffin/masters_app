class TeamsController < ApplicationController
  def new
  	@title = "Select Team"
    @user = current_user.id
    @team = Team.new
  end
end
