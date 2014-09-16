class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :team_id
      t.integer :year_id
      t.integer :week_id
      t.string :home_away
      t.string :oppo_id
      t.integer :offensive_worth
      t.integer :defensive_worth
      t.integer :points_allowed
      t.integer :points_scored

      t.timestamps
    end
  end
end
