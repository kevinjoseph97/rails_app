class CreateTrackTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :track_times do |t|
      t.references :track, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.integer :laptime

      t.timestamps
    end
  end
end
