class CreateJoinTableLibrariesDnaExtractions < ActiveRecord::Migration
  def change
    create_join_table :libraries, :dna_extractions do |t|
      t.index [:dna_extraction_id, :library_id], unique: true, name: :index_dnas_libraries
    end
  end
end
