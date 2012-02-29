class SelectionsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @title = "Select Team"
    @user = current_user.id
    @title = current_user.name
    @selection = Selection.new
    @golfers = Golfer.all
    @group_1 = Golfer.where(:group_id => "1")
    @group_2 = Golfer.where(:group_id => "2")
  end 

  def create
    @selection = Selection.create!(params[:selections])
    if @selection.save
      flash[:success] = "Selection made!"
      redirect_to current_user
    else
      flash[:error] = "Try again"
      redirect_to current_user
    end
  end

  def show
  end

  def destroy
  end

    def pick
    # TODO make user selections of golfers
    redirect_to @user
  end
end