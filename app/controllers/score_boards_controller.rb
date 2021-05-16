class ScoreBoardsController < ApplicationController
	def index
		@score_boards = ScoreBoard.all
	end

	def minimum_diff
		@score_board = ScoreBoard.all.order(:diff_for_against).first
	end
end
