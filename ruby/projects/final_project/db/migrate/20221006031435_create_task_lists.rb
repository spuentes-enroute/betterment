class CreateTaskListss < ActiveRecord::Migration[6.1]
  def change
    create_table :task_lists do |t|
      t.timestamps
      t.belongs_to :board, foreign_key: true
    end
  end
end
