class Survey < ActiveRecord::Base
  attr_accessible  :id, :survey_id, :course_id, :section_id, :instructor_id, :question_a, :question_b, :question_c, :question_d, :question_e, 
                  :question_f, :question_g, :question_h
  has_many   :questions         
end
