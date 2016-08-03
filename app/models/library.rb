class Library < ActiveRecord::Base
  has_many :library_dnas, dependent: :destroy

  has_many :dna_extractions, through: :library_dnas
  has_many :samples, through: :dna_extractions
  has_many :patients, through: :samples

  def projects
    dna_extractions.map(&:project).uniq
  end

  def sequencings
    library_dnas.map(&:sequencings).flatten.uniq.sort
  end
end
