# frozen_string_literal: true

class CreateTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ptypes do |t|
      t.string :ptype
      t.index :ptype

      t.timestamps
    end
  end
end
