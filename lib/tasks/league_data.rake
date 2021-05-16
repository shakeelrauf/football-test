namespace :league_data do

  desc "Task for parsing and loading league data in Database"
  task load: :environment do
  	input = File.open(Rails.root.join('lib', 'tasks', 'data','football.dat'), File::RDONLY){|f| f.read }
		arr = input.lines.map(&:split)
		(1..(arr.length-1)).each do |index|
			if arr[index].length == 10
				team_name, p, w, l, d = arr[index][1], arr[index][2], arr[index][3], arr[index][4], arr[index][5]
				f, a, pts = arr[index][6], arr[index][8], arr[index][9]
				diff = (f.to_i - a.to_i).abs
				sb = ScoreBoard.new({team: team_name, P: p, W: w, L: l, D: d, F: f, A: a, Pts: pts, diff_for_against: diff})
				sb.save
			end
		end
  end

end
