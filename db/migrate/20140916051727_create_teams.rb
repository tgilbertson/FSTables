class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_id
      t.string :team_city
      t.string :team_name

      t.timestamps
    end
  end
end
