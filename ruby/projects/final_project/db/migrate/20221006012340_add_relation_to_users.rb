class AddRelationToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :team_id, :int
    add_column :boards, :team_id, :int
    add_column :teams, :name, :string
  end
end
