class RenameLibraryDnasTable < ActiveRecord::Migration
  def change
    rename_table :dna_extractions_libraries, :library_dnas
  end
end
