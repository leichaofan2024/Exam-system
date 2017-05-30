class AddExamIdToChoice < ActiveRecord::Migration[5.0]
  def change
    add_column :choices, :exam_id, :integer
  end
end
