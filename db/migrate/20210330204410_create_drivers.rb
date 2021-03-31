class CreateDrivers < ActiveRecord::Migration[6.1]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :car
      t.string :password_digest

      t.timestamps
    end
  end
end
