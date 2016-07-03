class Sample < ActiveRecord::Base
  belongs_to :project
  validates :project, presence: true

  belongs_to :patient
  validates :patient, presence: true, allow_nil: false

  has_many :dna_extractions, dependent: :destroy

  delegate :full_name, to: :patient

  def name
    "#{project.tag}-#{id}"
  end

  def description
    "#{name} #{patient.full_name}"
  end
end
