class CreateTeacherTeams < ActiveRecord::Migration
  def change
    create_table :teacher_teams do |t|
      t.references :teacher, index: true, foreign_key: true
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
