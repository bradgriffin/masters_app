class PoolsController < ApplicationController
  helper :pools

  def new
  	@title = "Create Pool"
    @user = current_user
    @pool = Pool.new
  end

  def create
  	@pool = current_user.pools.build(params[:pools])

    if @pool.save
      flash[:success] = "Selection made!"
      redirect_to current_user
    else
      flash[:error] = "Try again"
      redirect_to current_user
    end
    auto_membership(@pool)
  end

  def show
    @user = current_user
    @current_pool = Pool.find(params[:id])
    @members = Membership.find_all_by_pool_id(@current_pool.id)
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
    @previous_total = []
    @rank = 0
  end

  def destroy
  end
end
