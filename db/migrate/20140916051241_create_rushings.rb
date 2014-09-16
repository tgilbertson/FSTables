class CreateRushings < ActiveRecord::Migration
  def change
    create_table :rushings do |t|
      t.string :player_id
      t.integer :year_id
      t.integer :week_id
      t.string :team_id
      t.string :player_position
      t.integer :rushing_worth
      t.integer :rushing_yards

      t.timestamps
    end
  end
end
