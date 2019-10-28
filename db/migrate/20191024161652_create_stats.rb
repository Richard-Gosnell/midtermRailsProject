class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.integer :sp_attack
      t.integer :sp_defence
      t.integer :speed
      t.references :name, foreign_key: true

      t.timestamps
    end
  end
end
