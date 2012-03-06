class DropGolfers < ActiveRecord::Migration
  def up
  	drop_table :golfers
  end

  def down
  end
end
