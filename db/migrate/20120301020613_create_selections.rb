class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :User_id
      t.integer :Golfer_id
      t.integer :group_id
      t.timestamps
    end
  end
end