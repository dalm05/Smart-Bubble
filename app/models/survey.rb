class Survey < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessible  :id, :survey_id, :course_id, :section_id, :instructor_id, :question_a, :question_b, :question_c, :question_d, :question_e, 
                  :question_f, :question_g, :question_h
  has_many   :questions         
=======
  attr_accessible :course_id, :instructor_id, :question_1, :response, :section, :survey_id
>>>>>>> 2b330685dfc098fc7af63fc3bc824d362e52e495
end
