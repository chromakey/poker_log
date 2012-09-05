class AddTimePlayToGames < ActiveRecord::Migration
  def change
    add_column :games, :time_played, :decimal
  end
end
