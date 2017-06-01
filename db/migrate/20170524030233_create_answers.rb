class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :exam_id
      t.integer :question_id
      t.boolean :is_aa1en, default: false
      t.boolean :is_bb1en, default: false
      t.boolean :is_cc1en, default: false
      t.boolean :is_dd1en, default: false
      t.boolean :is_ee1en, default: false
      t.boolean :is_ff1en, default: false

      t.timestamps
    end
  end
end
