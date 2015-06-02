class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.date :date
      t.string :location
      t.string :status

      t.timestamps null: false
    end
  end
end
