class SelectionsController < ApplicationController
  before_filter :authenticate_user!

  def index
  end

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
    @golfer_selection = params[:golfer_id]
    @team = Team.find(params[:team_id])
    @hash = {"golfer_id" => @golfer_selection, "group_id" => Golfer.find(@golfer_selection).group_id}
    @selection = @team.selections.build(@hash)
    @selection.save

    if @selection.save
      flash[:success] = "Selection made!"
      redirect_to @team
    else
      flash[:error] = "Try again"
      redirect_to @team
    end
  end

  def show
  end

  def destroy
    @selection = @team.selections.find_by_id(params[:id])
    @selection.destroy
    flash[:notice] = "Removed selection!"
    redirect_to @team
  end

  def edit
    @user = current_user
    @selection = Selection.find(params[:id])
    @team = Team.find(@selection.team_id)
  end

  def update
    @selection = Selection.find(params[:selections][:selection_id])
    @team = Team.find(@selection.team_id)
    @selection.update_attributes("golfer_id" => params[:selections][:golfer_id])

    flash[:notice] = "Updated selection!"
    redirect_to @team
  end

  def edit_multiple
    @user = current_user
    @selections = current_user.selections.find(params[:selection_id])
  end

  def update_multiple
    @user = current_user
    @selections = params[:selections][:selection_id]
    @golfers = params[:selections][:golfer_id]
    hash = {}
    @selections.each_with_index {|k,i|hash[k] = @golfers[i]}

    hash.each do |selection,golfer|
      @selection = @user.selections.find(selection)
      @selection.update_attributes("golfer_id" => golfer)
    end

    flash[:notice] = "Updated selections!"
    redirect_to current_user
  end

  private

end