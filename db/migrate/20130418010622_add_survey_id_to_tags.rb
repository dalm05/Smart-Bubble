class AddSurveyIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :survey_id, :string
  end
end
