class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text  :body
      t.text  :answer
      t.integer :quiz_id
      t.boolean :is_a1en, defaut: false
      t.boolean :is_b1en, defaut: false
      t.boolean :is_c1en, defaut: false
      t.boolean :is_d1en, defaut: false
      t.boolean :is_e1en, defaut: false
      t.boolean :is_f1en, defaut: false

      t.timestamps
    end
  end
end
