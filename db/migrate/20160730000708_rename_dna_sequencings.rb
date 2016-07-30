class RenameDnaSequencings < ActiveRecord::Migration
  def change
    rename_table :dna_sequencings, :dna_extractions_sequencings
  end
end
