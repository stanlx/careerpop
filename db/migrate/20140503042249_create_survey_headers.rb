class CreateSurveyHeaders < ActiveRecord::Migration
  def change
    create_table :survey_headers do |t|
      t.string :survey_name
      t.string :instructions
      t.string :other_header_info

      t.timestamps
    end
  end
end
