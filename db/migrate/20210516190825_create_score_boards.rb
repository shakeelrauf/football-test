class CreateScoreBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :score_boards do |t|
      t.string :team
      t.integer :P
      t.integer :W
      t.integer :L
      t.integer :D
      t.integer :F
      t.integer :A
      t.integer :Pts

      t.timestamps
    end
  end
end
