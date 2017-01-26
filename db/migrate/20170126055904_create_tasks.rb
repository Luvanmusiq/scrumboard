class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :story_id
      t.string :name
      t.string :description
      t.string :owner
      t.integer :estimated_hours
      t.integer :todo_hours
      t.integer :completed_hours
      t.string :dependencies
      t.string :status
      t.binary :status_indicator

      t.timestamps null: false
    end
  end
end
