class AddIdToDnaExtractionsLibraries < ActiveRecord::Migration
  def change
    add_column :dna_extractions_libraries, :id, :primary_key
  end
end
