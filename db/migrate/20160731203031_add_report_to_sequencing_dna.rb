class AddReportToSequencingDna < ActiveRecord::Migration
  def change
    add_column :sequencing_dnas, :report, :string
  end
end
