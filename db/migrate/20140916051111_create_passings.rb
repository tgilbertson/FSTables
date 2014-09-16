class CreatePassings < ActiveRecord::Migration
  def change
    create_table :passings do |t|
      t.string :player_id
      t.integer :year_id
      t.integer :week_id
      t.string :team_id
      t.string :player_position
      t.integer :passing_worth
      t.integer :passing_yards

      t.timestamps
    end
  end
end
