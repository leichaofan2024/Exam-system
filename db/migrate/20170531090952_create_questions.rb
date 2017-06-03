class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.text  :content
      t.integer :quiz_id
      t.string  :answer_1
      t.string  :answer_2
      t.string  :answer_3
      t.string  :answer_4
      t.string  :answer_5
      t.string  :answer_6
      t.string :imagea
      t.string :imageb
      t.string :imagec
      t.string :imaged
      t.string :imagee
      t.string :imagef
      t.boolean :is_a1en, default: false
      t.boolean :is_b1en, default: false
      t.boolean :is_c1en, default: false
      t.boolean :is_d1en, default: false
      t.boolean :is_e1en, default: false
      t.boolean :is_f1en, default: false

      t.timestamps
    end
  end
end
