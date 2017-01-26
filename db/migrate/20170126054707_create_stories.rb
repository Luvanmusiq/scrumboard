class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.integer :project_id
      t.string :name
      t.string :description
      t.string :owner
      t.integer :todo_hours
      t.string :status
      t.binary :status_indicator
      t.string :dependencies

      t.timestamps null: false
    end
  end
end
