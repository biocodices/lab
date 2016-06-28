class Sample < ActiveRecord::Base
  belongs_to :project
  belongs_to :patient
  has_many :dna_samples

  delegate :full_name, to: :patient

  def name
    "#{project.tag}-#{id}"
  end

  def description
    "#{name} #{patient.full_name}"
  end
end
