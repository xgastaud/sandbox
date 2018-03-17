class CreateRaces < ActiveRecord::Migration[5.1]
  def change
    create_table :races do |t|
      t.string :format
      t.integer :distance_swim
      t.integer :distance_bike
      t.integer :distance_run
      t.integer :vertical_ascent_bike
      t.integer :vertical_ascent_run
      t.integer :nb_participants
      t.date :date
      t.references :edition, foreign_key: true

      t.timestamps
    end
  end
end
