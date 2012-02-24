class AddDetailsToSelections < ActiveRecord::Migration
  def change
    add_column :selections, :user_id, :integer

    add_column :selections, :golfer_id, :integer

  end
end
