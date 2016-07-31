class SequencingDna < ActiveRecord::Base
  belongs_to :sequencing
  belongs_to :library_dna

  has_one :dna_extraction, through: :library_dna
  has_one :sample, through: :dna_extraction
  has_one :patient, through: :sample
end
