class Library < ActiveRecord::Base
  has_and_belongs_to_many :dna_extractions
  has_many :projects, through: :dna_extractions
  has_many :sequencings, through: :dna_extractions
end
