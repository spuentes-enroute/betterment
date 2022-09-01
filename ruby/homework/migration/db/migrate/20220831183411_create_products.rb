class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :amount, precision: 10, scale: 2
      t.integer :stock
      t.string :color
      t.string :brand
      t.string :collection
      t.string :category
      t.string :size
      t.text :description
      t.string :meta

      t.timestamps
    end
  end
end
