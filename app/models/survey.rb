class Survey < ActiveRecord::Base

  attr_accessible :course_id, :instructor_id,  :section_id
  
  has_many   :questions 
end
