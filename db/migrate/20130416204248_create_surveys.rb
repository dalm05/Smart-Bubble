class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :survey_id
      t.string :course_id
      t.string :section
      t.string :instructor_id
      t.string :question_1
      t.string :response

      t.timestamps
    end
  end
end
