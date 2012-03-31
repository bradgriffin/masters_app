module PoolsHelper

	def auto_membership(pool)
		@user = current_user
    	pool = Pool.find_by_name(pool.name)
      	@member = Membership.new("pool_id" => pool.id, "user_id" => current_user.id)
      	@member.save
	end
end
