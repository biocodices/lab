class RemoveColumnsToSequencingDna < ActiveRecord::Migration
  def change
    raise Exception
    # ^ Remove after running the script scripts/move_well... in prod
    remove_column :dna_extractions_sequencings, :well, :string
    remove_column :dna_extractions_sequencings, :i5, :string
    remove_column :dna_extractions_sequencings, :i7, :string
  end
end
