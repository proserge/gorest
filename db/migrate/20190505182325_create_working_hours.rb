class CreateWorkingHours < ActiveRecord::Migration[5.2]
  def change
    create_table :working_hours do |t|
      t.references :restaurant, foreign_key: true
      t.integer :open_hour
      t.integer :close_hour

      t.timestamps
    end
  end
end
