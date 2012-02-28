class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :user_id
      t.integer :golfer_id
      t.integer :group_id
      t.timestamps
    end
  end
end
