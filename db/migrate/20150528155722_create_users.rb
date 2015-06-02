class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.boolean :digitalproject
      t.string :digitalprojectname

      t.timestamps null: false
    end
  end
end
