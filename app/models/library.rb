class Library < ActiveRecord::Base
  has_and_belongs_to_many :dna_samples
  has_many :projects, through: :dna_samples
  has_many :sequencings, through: :dna_samples
end
