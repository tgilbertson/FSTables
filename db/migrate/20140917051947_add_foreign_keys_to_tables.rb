class AddForeignKeysToTables < ActiveRecord::Migration
  def change
    add_reference :players, :passings, index: true
    add_reference :players, :rushings, index: true
    add_reference :players, :receivings, index: true
    add_reference :teams, :schedules, index: true
  end
end