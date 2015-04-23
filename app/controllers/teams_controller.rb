class TeamsController < ApplicationController
	def new
		@team = Team.new
	end
	def create
		@team = Team.new(team_params)
    
		if @team.save
			redirect_to @team
		else
			render 'new'
		end
	end

	def show
		@team = Team.find(params[:id])
	end

	def index
		@teams = Team.all
	end

	private
		def team_params
			params.require(:team).permit(:team_name)
		end
end
