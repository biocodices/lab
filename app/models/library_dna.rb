class LibraryDna < ActiveRecord::Base
  belongs_to :library
  belongs_to :dna_extraction

  has_many :sequencing_dnas, dependent: :destroy
  has_many :sequencings, through: :sequencing_dnas

  has_one :sample, through: :dna_extraction

  def patient
    dna_extraction.sample.patient
  end
end
