class Question < ActiveRecord::Base
  attr_accessible :survey_id, :question, :question_id, :option
  belongs_to :survey
end
