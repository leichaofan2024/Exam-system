class CreateExams < ActiveRecord::Migration[5.0]
  def change
    create_table :exams do |t|
      t.integer  :user_id
      t.integer  :quiz_id

      t.string :countdown


      t.timestamps
    end
  end
end
