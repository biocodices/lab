class AddColumnsToLibraryDna < ActiveRecord::Migration
  def change
    add_column :dna_extractions_libraries, :well, :string
    add_column :dna_extractions_libraries, :i5, :string
    add_column :dna_extractions_libraries, :i7, :string
  end
end
