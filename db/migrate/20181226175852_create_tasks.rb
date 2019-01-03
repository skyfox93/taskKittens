class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :note
      t.boolean :complete, default: false, null: false
      t.boolean :priority, default: false, null: false
      t.string :due_date
      t.integer :list_id

      t.timestamps
    end
  end
end
