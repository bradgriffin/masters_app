class AddDetailsToGolfers < ActiveRecord::Migration
  def change
    add_column :golfers, :country_name, :string

    add_column :golfers, :first_masters, :boolean

    add_column :golfers, :past_champion, :boolean

  end
end
