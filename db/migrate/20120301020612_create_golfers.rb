class CreateGolfers < ActiveRecord::Migration
  def change
    create_table :golfers do |t|
      t.string :name
      t.string :status
      t.string :group_id
    end
  end
end