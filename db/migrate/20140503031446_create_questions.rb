class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :survey_section_id
      t.integer :input_type_id
      t.string :question_name
      t.string :question_subtext
      t.boolean :answer_required
      t.boolean :allow_multiple_answers

      t.timestamps
    end
  end
end
