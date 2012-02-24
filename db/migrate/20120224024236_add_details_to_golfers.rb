class AddDetailsToGolfers < ActiveRecord::Migration
  def change
    add_column :golfers, :group, :string

    add_column :golfers, :bio, :string

  end
end
