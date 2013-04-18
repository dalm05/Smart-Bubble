class Survey < ActiveRecord::Base
  attr_accessible :course_id, :instructor_id, :question_1, :response, :section, :survey_id
end
