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
    @golfer_selection = params[:selections][:golfer_id]
    for golfer in @golfer_selection 
      @hash = {"golfer_id" => golfer, "group_id" => Golfer.find(golfer).group_id}
      @selection = current_user.selections.build(@hash)
      @selection.save
    end

    if @selection.save
      flash[:success] = "Selections made!"
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
end