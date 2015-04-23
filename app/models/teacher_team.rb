class TeacherTeam < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :team
end
