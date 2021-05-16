class AddColumnDifferenceToScoreBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :score_boards, :diff_for_against, :integer
  end
end
