class CreateOptionGroups < ActiveRecord::Migration
  def change
    create_table :option_groups do |t|
      t.string :option_group_name

      t.timestamps
    end
  end
end
