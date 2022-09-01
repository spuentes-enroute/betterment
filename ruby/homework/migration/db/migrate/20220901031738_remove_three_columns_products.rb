class RemoveThreeColumnsProducts < ActiveRecord::Migration[7.0]
  def change
    change_table(:products, bulk: true) do |t|
      t.change :meta, :text, null: true
      t.change :stock, :boolean, null: true
      t.change :size, :integer, null: true
     end
  end
end
