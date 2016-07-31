class Sequencing < ActiveRecord::Base
  has_many :sequencing_dnas, dependent: :destroy
  has_many :library_dnas, through: :sequencing_dnas, dependent: :destroy
  has_many :dna_extractions, through: :library_dnas

  def projects
    dna_extractions.map(&:project).uniq
  end

  def libraries
    library_dnas.map(&:library).flatten.uniq
  end

  def samples
    dna_extractions.map(&:sample).uniq
  end

  def patients
    dna_extractions.map(&:patient).uniq
  end
end
