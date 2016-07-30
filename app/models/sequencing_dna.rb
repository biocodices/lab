class SequencingDna < ActiveRecord::Base
  self.table_name = 'dna_extractions_sequencings'

  belongs_to :sequencing
  belongs_to :dna_extraction

  def to_s
    "<SequencingDna dna: #{dna_extraction.id} sequencing: #{sequencing.id}>"
  end
end
