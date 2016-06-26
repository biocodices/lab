class DnaSample < ActiveRecord::Base
  belongs_to :sample

  has_and_belongs_to_many :libraries

  has_many :dna_sequencings
  has_many :sequencings, through: :dna_sequencings

  has_one :patient, through: :sample
end
