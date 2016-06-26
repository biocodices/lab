class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :institution
      t.string :doctor_full_name
      t.string :doctor_email
      t.date :request_date
      t.date :admission_date
      t.string :request_category
      t.text :notes
      t.references :project, index: true, foreign_key: true
      t.string :old_id
      t.references :patient, index: true, foreign_key: true
      t.string :barcode

      t.timestamps null: false
    end
  end
end
