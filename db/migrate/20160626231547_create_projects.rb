class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :full_name
      t.string :tag
      t.text :description
      t.string :old_id

      t.timestamps null: false
    end
  end
end
