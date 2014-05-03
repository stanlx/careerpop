class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.string :name
      t.string :source

      t.timestamps
    end
  end
end
