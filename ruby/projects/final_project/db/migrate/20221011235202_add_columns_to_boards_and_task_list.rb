class AddColumnsToBoardsAndTaskList < ActiveRecord::Migration[6.1]
  def change
    add_column :boards, :visibility, :integer, default: 0

    add_column :task_lists, :color, :string
    add_column :task_lists, :priority, :integer
    
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end
end
