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

  def destroy
  end
end