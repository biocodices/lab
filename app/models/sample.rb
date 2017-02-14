# frozen_string_literal: true

# A sample represents a physical raw sample that has arrived in the lab.
# It might be a blood sample or embryo cells, but it's always *raw*,
# as opposed to the DNA extraction that will come after some processing
# of the sample.
class Sample < ActiveRecord::Base
  belongs_to :study
  belongs_to :project  # TODO: remove this after creating the Studies
  validates :study, presence: true

  has_many :dna_extractions, dependent: :destroy
  has_many :libraries, through: :dna_extractions
  has_many :sequencings, through: :dna_extractions

  delegate :full_name, to: :study

  def description
    "##{id} from #{patient.full_name}"
  end
end
