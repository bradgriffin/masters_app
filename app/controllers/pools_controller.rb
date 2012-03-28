class PoolsController < ApplicationController
  def new
  	@title = "Create Pool"
    @user = current_user.id
    @pool = Pool.new
  end

  def create
  	@pool = current_user.pools.build(params[:pools])
    @pool.save

    if @pool.save
      flash[:success] = "Selection made!"
      redirect_to current_user
    else
      flash[:error] = "Try again"
      redirect_to current_user
    end
  end

  def show
  end
end
