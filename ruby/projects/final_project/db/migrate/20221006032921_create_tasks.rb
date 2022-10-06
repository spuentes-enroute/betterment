class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :title
      t.belongs_to :task_list, foreign_key: true
      t.timestamps
    end
  end
end
