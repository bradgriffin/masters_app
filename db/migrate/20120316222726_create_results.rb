class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :round_1
      t.integer :round_2
      t.integer :round_3
      t.integer :round_4
      t.integer :golfer_id
    end
  end
end
