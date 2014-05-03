class CreateUserSurveySections < ActiveRecord::Migration
  def change
    create_table :user_survey_sections do |t|
      t.integer :user_id
      t.integer :survey_section_id
      t.datetime :completed_on

      t.timestamps
    end
  end
end
