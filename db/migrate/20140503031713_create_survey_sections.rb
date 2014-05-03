class CreateSurveySections < ActiveRecord::Migration
  def change
    create_table :survey_sections do |t|
      t.integer :survey_header_id
      t.string :section_name
      t.string :section_title
      t.string :section_subheading
      t.boolean :section_required

      t.timestamps
    end
  end
end
