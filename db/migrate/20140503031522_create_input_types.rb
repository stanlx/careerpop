class CreateInputTypes < ActiveRecord::Migration
  def change
    create_table :input_types do |t|
      t.string :input_type_name

      t.timestamps
    end
  end
end
