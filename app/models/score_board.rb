class ScoreBoard < ApplicationRecord
  validates :team, uniqueness: true
end
