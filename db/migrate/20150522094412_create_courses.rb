class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :overview
      t.integer :duration

      t.timestamps null: false
    end
  end
end
