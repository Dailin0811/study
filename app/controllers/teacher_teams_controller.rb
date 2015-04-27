# encoding: utf-8 

class TeacherTeamsController < ApplicationController
	def new
	end

	def create
		teacher_ids = params[:teacher_ids]
		team_id = params[:team_id]
		TeacherTeam.delete_all(["team_id=?",team_id])
		teacher_ids.each do |teacher_id|
			teacher_team = TeacherTeam.new()
			teacher_team.teacher_id = teacher_id
			teacher_team.team_id = team_id
			teacher_team.save		
		end
		render action: :new
	end
	
	def show
		@teacher_team = TeacherTeam.find(params[:id])
	end

	private
		def teacher_team_params
			params.require(:teacher_team).permit(:teacher_id,:team_id)
		end
end
