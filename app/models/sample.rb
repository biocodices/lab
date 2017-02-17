# A sample represents a physical raw sample that has arrived in the lab.
# It might be a blood sample or embryo cells, but it's always *raw*,
# as opposed to the DNA extraction that will come after some processing
# of the sample.
class Sample < ActiveRecord::Base
  belongs_to :study
  validates :study, presence: true

  has_many :dna_extractions, dependent: :destroy
  has_many :libraries, through: :dna_extractions
  has_many :sequencings, through: :dna_extractions

  delegate(
    :project,
    :patient,
    :institution,
    :request_category,
    :request_date,
    :request_date_ago,
    :admission_date,
    :admission_date_ago,
    :doctor_full_name,
    :doctor_email,

    to: :study
  )
end
