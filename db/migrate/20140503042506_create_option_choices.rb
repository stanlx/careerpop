class CreateOptionChoices < ActiveRecord::Migration
  def change
    create_table :option_choices do |t|
      t.integer :option_group_id
      t.string :option_choice_name

      t.timestamps
    end
  end
end
