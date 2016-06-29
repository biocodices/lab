class Sequencing < ActiveRecord::Base
  has_many :dna_sequencings
  has_many :dna_extractions, through: :dna_sequencings
end
