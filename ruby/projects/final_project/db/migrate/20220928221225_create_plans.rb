# frozen_string_literal: true

class CreatePlans < ActiveRecord::Migration[6.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :period
      t.integer :period_type
      t.monetize :price

      t.timestamps
    end
  end
end
