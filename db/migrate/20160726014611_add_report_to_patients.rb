class AddReportToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :report, :string
  end
end
