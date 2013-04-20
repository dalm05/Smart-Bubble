class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :course_id
      t.string :section_id
      t.string :instructor_id
      
      t.timestamps
    end
  end
end
