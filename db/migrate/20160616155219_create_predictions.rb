class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.belongs_to :matches_team, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.integer :score

      t.timestamps null: false
    end
  end
end
