class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :label_1
      t.string :label_2
      t.string :label_3
      t.string :label_4
      t.string :label_5

      t.timestamps
    end
  end
end
