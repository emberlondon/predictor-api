class CreateMatchesTeams < ActiveRecord::Migration
  def change
    create_table :matches_teams do |t|
      t.belongs_to :team, index: true, foreign_key: true
      t.belongs_to :match, index: true, foreign_key: true
      t.integer :score

      t.timestamps null: false
    end
  end
end
