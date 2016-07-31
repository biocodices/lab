class SequencingDna < ActiveRecord::Base
  belongs_to :sequencing
  belongs_to :library_dna

  has_one :dna_extraction, through: :library_dna

  def sample
    dna_extraction.sample
  end

  def patient
    sample.patient
  end
end
