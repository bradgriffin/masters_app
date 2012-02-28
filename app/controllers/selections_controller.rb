class SelectionsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @selection = current_user.selections.build(params[:selection])
    if @selection.save
      flash[:success] = "Selection made!"
      redirect_to current_user
    else
      flash[:error] = "Try again"
      redirect_to current_user
    end
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
    @selection = Selection.new
    8.times do
      @selection = @user.selections.build(params[:selection])
    end
    @golfers = Golfer.all
    @group_1 = Golfer.where(:group_id => "1")
    @group_2 = Golfer.where(:group_id => "2")
  end

  def destroy
  end
end