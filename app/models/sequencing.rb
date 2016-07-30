class Sequencing < ActiveRecord::Base
  has_many :sequencing_dnas
  has_many :dna_extractions, through: :sequencing_dnas

  def projects
    dna_extractions.map(&:project).uniq
  end

  def libraries
    dna_extractions.map(&:libraries).flatten.uniq
  end

  def samples
    dna_extractions.map(&:sample).uniq
  end

  def patients
    dna_extractions.map(&:patient).uniq
  end
end
