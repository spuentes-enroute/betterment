# frozen_string_literal: true

class AddTitleToTaskListss < ActiveRecord::Migration[6.1]
  def change
    add_column :task_lists, :title, :string
  end
end
