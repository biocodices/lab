class RemoveFieldsFromSamples < ActiveRecord::Migration
  def change
    remove_foreign_key :samples, :projects
    remove_column :samples, :project_id

    remove_foreign_key :samples, :patients
    remove_column :samples, :patient_id

    remove_column :samples, :institution
    remove_column :samples, :doctor_full_name
    remove_column :samples, :doctor_email
    remove_column :samples, :request_date
    remove_column :samples, :admission_date
    remove_column :samples, :request_category
  end
end
