class AddStatusToGolfers < ActiveRecord::Migration
  def change
    add_column :golfers, :status, :string

  end
end
