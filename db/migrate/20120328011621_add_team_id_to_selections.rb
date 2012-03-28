class AddTeamIdToSelections < ActiveRecord::Migration
  def change
    add_column :selections, :team_id, :integer

  end
end
