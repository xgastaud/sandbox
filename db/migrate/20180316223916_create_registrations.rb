class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.date :date
      t.references :user, foreign_key: true
      t.references :race, foreign_key: true

      t.timestamps
    end
  end
end
