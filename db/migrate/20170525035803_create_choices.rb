class CreateChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :choices do |t|
      t.integer :user_id
      t.string  :name
      t.boolean :is_aa1en, default: false
      t.boolean :is_bb1en, default: false
      t.boolean :is_cc1en, default: false
      t.boolean :is_dd1en, default: false
      t.boolean :is_ee1en, default: false
      t.boolean :is_ff1en, default: false
      t.integer :exam_id
      t.float :score

      t.timestamps
    end
  end
end
