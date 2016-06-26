class CreateJoinTableLibrariesDnaSamples < ActiveRecord::Migration
  def change
    create_join_table :libraries, :dna_samples do |t|
      t.index [:dna_sample_id, :library_id], unique: true
    end
  end
end
