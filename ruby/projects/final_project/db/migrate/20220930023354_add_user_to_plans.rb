class AddUserToPlans < ActiveRecord::Migration[6.1]
  def change
    add_column :plans, :user_id, :int
  end
end
