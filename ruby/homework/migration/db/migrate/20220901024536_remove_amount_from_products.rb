class RemoveAmountFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :amount, type: :decimal, precision: 4, scale: 2
  end
end
