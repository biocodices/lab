class AddStudyToSamples < ActiveRecord::Migration
  def change
    add_column :samples, :study_id, :integer
  end
end
