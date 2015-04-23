class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :sex
      t.integer :age
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
