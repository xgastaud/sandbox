class AddColumnSportToRaces < ActiveRecord::Migration[5.1]
  def change
    add_column :races, :sport, :string
  end
end
