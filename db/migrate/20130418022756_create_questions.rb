class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_id
      t.string :question_id
      t.string :question
      t.string :option

      t.timestamps
    end
  end
end
