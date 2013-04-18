class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :survey_id
      t.string :course_id
      t.string :section_id
      t.string :instructor_id
      t.string :question_a
      t.string :question_b
      t.string :question_c
      t.string :question_d
      t.string :question_e
      t.string :question_f
      t.string :question_g
      t.string :question_h
      t.string :question_i
      t.string :question_j
      t.string :question_k
      t.string :question_l
      t.string :response_a
      t.string :response_b
      t.string :response_c
      t.string :response_d
      t.string :response_e
      t.string :response_f
      t.string :response_g
      t.string :response_h
      t.string :response_i 
      t.string :response_j
      t.string :response_k
      t.string :response_l

      t.timestamps
    end
  end
end
