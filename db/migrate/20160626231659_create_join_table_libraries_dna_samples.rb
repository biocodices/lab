class CreateJoinTableLibrariesDnaSamples < ActiveRecord::Migration
  def change
    create_join_table :libraries, :dna_samples do |t|
      # t.index [:library_id, :dna_sample_id]
      # t.index [:dna_sample_id, :library_id]
    end
  end
end
