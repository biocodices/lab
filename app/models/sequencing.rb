class Sequencing < ActiveRecord::Base
  has_many :dna_sequencings
  has_many :dna_extractions, through: :dna_sequencings
  has_many :libraries, through: :dna_extractions

  def projects
    dna_extractions.map(&:project).uniq
  end
end
