namespace :league_data do

  desc "Task for parsing and loading league data in Database"
  task load: :environment do
  	input = File.open(Rails.root.join('lib', 'tasks', 'data','football.dat'), File::RDONLY){|f| f.read }
	arr = input.lines.map(&:split)
	(1..(arr.length-1)).each do |index|
		if arr.length == 10
			team_name, p, w, l, d = arr[index][1], arr[index][2], arr[index][3], arr[index][4], arr[index][5]
			f, a, pts = arr[index][6], arr[index][8], arr[index][9]
			sb = ScoreBoard.new({team: team_name, P: p, W: w, L: l, D: d, F: f, A: a, Pts: pts})
			sb.save
		end
	end
  end

end
