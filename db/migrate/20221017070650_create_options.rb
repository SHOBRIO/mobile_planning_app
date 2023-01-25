# -*- encoding : utf-8 -*-
class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
