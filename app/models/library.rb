class Library < ActiveRecord::Base
  has_many :library_dnas
  has_many :dna_extractions, through: :library_dnas

  def projects
    dna_extractions.map(&:project).uniq
  end

  def sequencings
    dna_extractions.map(&:sequencings).flatten.uniq
  end
end
