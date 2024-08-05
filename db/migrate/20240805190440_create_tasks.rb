class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :note
      t.integer :category
      t.integer :timeframe
      t.datetime :due_date
      t.datetime :start_date
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.integer :parent_task_id

      t.timestamps
    end

    add_foreign_key :tasks, :tasks, column: :parent_task_id
  end
end
