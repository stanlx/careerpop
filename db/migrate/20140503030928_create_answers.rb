class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_option_id
      t.integer :answer_number
      t.string :answer_text
      t.boolean :answer_yn

      t.timestamps
    end
  end
end
