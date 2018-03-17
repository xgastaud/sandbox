class CreateEditions < ActiveRecord::Migration[5.1]
  def change
    create_table :editions do |t|
      t.integer :year
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
