# -*- encoding : utf-8 -*-
class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
