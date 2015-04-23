class Team < ActiveRecord::Base
	has_many :students
	has_many :teacher_teams

	validates :team_name,uniqueness: true,
		                   presence:true,
		                   length:{is: 8}
end
