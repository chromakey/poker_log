class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :start_date
      t.time :start_time
      t.time :end_time
      t.decimal :earned
      t.text :notes

      t.timestamps
    end
  end
end
