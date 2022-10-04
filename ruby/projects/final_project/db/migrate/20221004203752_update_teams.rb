class UpdateTeams < ActiveRecord::Migration[6.1]
  def change
    remove_index :teams, :user_id, name: "index_teams_on_user_id"
    remove_column :teams, :user_id
  end
end
