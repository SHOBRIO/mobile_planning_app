# -*- encoding : utf-8 -*-
class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
