class Survey < ActiveRecord::Base
  attr_accessible :course_id, :instructor_id, :question_a, :question_b, :question_c, :question_d, :question_e, 
                  :question_f, :question_g, :question_h, :question_i, :question_j, :question_k, :question_l, 
                  :response_a, :response_b, :response_c, :response_d, :response_e, :response_f, :response_g, 
                  :response_h, :response_i, :response_k, :response_l, :section_id, :survey_id
end
