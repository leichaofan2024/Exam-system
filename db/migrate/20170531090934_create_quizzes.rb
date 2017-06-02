class CreateQuizzes < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzes do |t|
      t.string   :title
      t.text     :description
      t.integer  :product_id

      t.timestamps
    end
  end
end
