class DnaSequencing < ActiveRecord::Base
  self.table_name = 'dna_sequencings'
  belongs_to :dna_extraction
  belongs_to :sequencing
end
