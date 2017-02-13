class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.references :project, index: true, foreign_key: true
      t.references :patient, index: true, foreign_key: true
      t.string :tag
      t.text :note
      t.string :institution
      t.string :doctor_full_name
      t.string :doctor_email
      t.date :request_date
      t.date :admission_date
      t.string :request_category

      t.timestamps null: false
    end
  end
end
