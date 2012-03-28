class RemoveUserIdFromSelections < ActiveRecord::Migration
  def up
    remove_column :selections, :user_id
      end

  def down
    add_column :selections, :user_id, :integer
  end
end
