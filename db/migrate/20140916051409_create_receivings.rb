class CreateReceivings < ActiveRecord::Migration
  def change
    create_table :receivings do |t|
      t.string :player_id
      t.integer :year_id
      t.integer :week_id
      t.string :team_id
      t.string :player_position
      t.integer :receiving_worth
      t.integer :receiving_yards

      t.timestamps
    end
  end
end
