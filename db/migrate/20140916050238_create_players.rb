class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :player_id
      t.string :first_name
      t.string :last_name
      t.string :player_position
      t.string :team_id

      t.timestamps
    end
  end
end
