# frozen_string_literal: true

class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.index :name
      t.references :ptype, foreign_key: true

      t.timestamps
    end
  end
end
