class SequencingDna < ActiveRecord::Base
  belongs_to :sequencing
  belongs_to :library_dna

  has_one :dna_extraction, through: :library_dna

  mount_uploader :report, ReportUploader

  def sample
    dna_extraction.sample
  end

  def patient
    sample.patient
  end

  def tag
    "#{dna_extraction.tag}_LIB-#{library_dna.library_id}_SEQ-#{sequencing_id}"
  end
end
