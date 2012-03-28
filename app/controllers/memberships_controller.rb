class MembershipsController < ApplicationController
  def new
  	@member = Membership.new
  	@user = current_user
  end

  def create
  	@user = current_user
    pool = Pool.find_by_name(params[:membership][:name])
  	
  	if pool && pool.authenticate(params[:membership][:password])
  		@member = Membership.new("pool_id" => pool.id, "user_id" => current_user.id)
  		if @member.save
	      flash.now[:success] = "Congratulations, you have joined a new pool!"
	      redirect_to current_user
	    else
	      	@member.errors.full_messages.each do |msg|
      			flash.now[:error] = msg
  			end
	      	render 'new'
	    end
  	else
		flash.now[:error] = 'Invalid name/password combination'
      	render 'new'
      end
  end
end
