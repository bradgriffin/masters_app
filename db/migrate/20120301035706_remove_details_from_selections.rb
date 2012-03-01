class RemoveDetailsFromSelections < ActiveRecord::Migration
  def up
    remove_column :selections, :User_id
        remove_column :selections, :Golfer_id
      end

  def down
    add_column :selections, :Golfer_id, :integer
    add_column :selections, :User_id, :integer
  end
end
