class AddRacemasterToDrivers < ActiveRecord::Migration[6.1]
  def change
    add_column :drivers, :racemaster, :boolean
  end
end
