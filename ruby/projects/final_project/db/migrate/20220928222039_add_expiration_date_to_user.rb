class AddExpirationDateToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :expiration_date, :date
    add_column :users, :purchases, :string, array: true, default: []
  end
end
