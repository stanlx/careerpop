class CreateQuestionOptions < ActiveRecord::Migration
  def change
    create_table :question_options do |t|
      t.integer :question_id
      t.integer :option_choice_id

      t.timestamps
    end
  end
end
