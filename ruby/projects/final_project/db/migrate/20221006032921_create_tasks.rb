# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :title
      t.belongs_to :task_lists
      t.timestamps
    end

    add_column :task_lists, :title, :string
  end
end
